"""Minimal Lua table-literal parser for the wiki's data modules (stdlib only)."""
from __future__ import annotations

import re

_ESC = {"n": "\n", "t": "\t", "r": "\r", '"': '"', "'": "'", "\\": "\\"}
_NUM = re.compile(r"-?\d+(?:\.\d+)?(?:[eE][+-]?\d+)?")
_IDENT = re.compile(r"[A-Za-z_]\w*")
_KEY = re.compile(r"([A-Za-z_]\w*)\s*=(?!=)")
_DEC = re.compile(r"\d{1,3}")


class LuaParseError(ValueError):
    pass


class _Parser:
    def __init__(self, s: str):
        self.s, self.i = s, 0

    def ws(self) -> None:
        s, n = self.s, len(self.s)
        while self.i < n:
            c = s[self.i]
            if c in " \t\r\n":
                self.i += 1
            elif s.startswith("--[[", self.i):
                j = s.find("]]", self.i + 4)
                self.i = n if j < 0 else j + 2
            elif s.startswith("--", self.i):
                j = s.find("\n", self.i)
                self.i = n if j < 0 else j + 1
            else:
                break

    def peek(self) -> str:
        self.ws()
        return self.s[self.i] if self.i < len(self.s) else ""

    def expect(self, ch: str) -> None:
        if self.peek() != ch:
            raise LuaParseError(f"expected {ch!r} at {self.i}: {self.s[self.i:self.i + 40]!r}")
        self.i += 1

    def value(self):
        c = self.peek()
        if c == "{":
            return self.table()
        if c in "\"'":
            return self.string(c)
        if c == "[" and self.s.startswith("[[", self.i):
            j = self.s.find("]]", self.i + 2)
            v = self.s[self.i + 2:j]
            self.i = j + 2
            return v
        m = _NUM.match(self.s, self.i)
        if m:
            self.i = m.end()
            t = m.group()
            return float(t) if any(x in t for x in ".eE") else int(t)
        m = _IDENT.match(self.s, self.i)
        if m:
            self.i = m.end()
            w = m.group()
            if w == "true":
                return True
            if w == "false":
                return False
            if w == "nil":
                return None
            raise LuaParseError(f"unexpected identifier {w!r} at {self.i}")
        raise LuaParseError(f"unexpected {c!r} at {self.i}")

    def string(self, q: str) -> str:
        s, i, out = self.s, self.i + 1, []
        while True:
            c = s[i]
            if c == "\\":
                nxt = s[i + 1]
                if nxt.isdigit():
                    m = _DEC.match(s, i + 1)
                    out.append(chr(int(m.group())))
                    i = m.end()
                else:
                    out.append(_ESC.get(nxt, nxt))
                    i += 2
            elif c == q:
                self.i = i + 1
                return "".join(out)
            else:
                out.append(c)
                i += 1

    def table(self):
        self.expect("{")
        items, positional, nxt = [], True, 1
        while True:
            c = self.peek()
            if c == "}":
                self.i += 1
                break
            m_stray = _IDENT.match(self.s, self.i)
            if m_stray and self.s[m_stray.end():m_stray.end() + 1] in "\n\r" and m_stray.group() not in ("true", "false", "nil"):
                self.i = m_stray.end()   # wiki typo like `name = "X",e` — a stray letter on its own
                continue
            if c == "[":
                self.i += 1
                k = self.value()
                self.expect("]")
                self.expect("=")
                v = self.value()
                positional = False
            else:
                m = _KEY.match(self.s, self.i)
                if m:
                    self.i = m.end()
                    k, v = m.group(1), self.value()
                    positional = False
                else:
                    k, v = nxt, self.value()
                    nxt += 1
            items.append((k, v))
            if self.peek() in ",;":
                self.i += 1
        if positional:
            return [v for _, v in items]
        return {k: v for k, v in items}


def parse_module(text: str):
    """Return the table a Lua data module returns (`return {...}` or `local x = {...}`)."""
    m = re.search(r"^\s*(?:local\s+\w+\s*=\s*|return\s*)(\{)", text, re.M)
    if not m:
        raise LuaParseError("no table literal found")
    p = _Parser(text)
    p.i = m.start(1)
    return p.table()
