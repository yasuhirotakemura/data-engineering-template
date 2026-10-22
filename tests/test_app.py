from pathlib import Path
import runpy


def test_entrypoint() -> None:
    assert Path("python/app.py").is_file()
    assert callable(runpy.run_path("python/app.py", run_name="unit_test")["main"])
