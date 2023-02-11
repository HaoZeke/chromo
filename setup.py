from pathlib import Path
from setuptools import setup
import sys
import subprocess as subp
import os

cwd = Path(__file__).parent

sys.path.append(str(cwd))
from cmake_ext import CMakeExtension, CMakeBuild, get_models  # noqa: E402

if not os.environ.get("CI", False) and (cwd / ".git").exists():
    # make sure that submodules are up-to-date,
    # it is a common error to forget this when
    # switching between development branches
    subp.check_call(["git", "submodule", "update"])

ext_modules = [
    CMakeExtension(f"chromo.models._{model}") for model in get_models()
]
setup(
    zip_safe=False,
    ext_modules=ext_modules,
    cmdclass={"build_ext": CMakeBuild},
)
