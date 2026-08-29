from pathlib import Path
import sys

import pytest

ROOT = Path(__file__).parent.parent
sys.path.insert(0, str(ROOT))
RAW = ROOT / "data" / "raw"


@pytest.fixture(scope="session")
def raw():
    return lambda name: (RAW / f"{name}.lua").read_text(encoding="utf-8")
