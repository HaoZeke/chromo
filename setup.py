from pathlib import Path
from setuptools import setup
import sys

cwd = Path(__file__).parent

sys.path.append(str(cwd))
from cmake_ext import CMakeExtension, CMakeBuild  # noqa: E402

setup(
    zip_safe=False,
    ext_modules=[
        CMakeExtension("impy.models._eposlhc"),
        CMakeExtension("impy.models._sib21"),
        CMakeExtension("impy.models._sib23c00"),
        CMakeExtension("impy.models._sib23c01"),
        CMakeExtension("impy.models._sib23c02"),
        CMakeExtension("impy.models._sib23c03"),
        CMakeExtension("impy.models._sib23d"),
        CMakeExtension("impy.models._qgs01"),
        CMakeExtension("impy.models._qgsII03"),
        CMakeExtension("impy.models._qgsII04"),
        CMakeExtension("impy.models._urqmd34"),
        #   does not compile, see CMakeLists.txt
        CMakeExtension("impy.models._pythia6"),
    ],
    cmdclass={"build_ext": CMakeBuild},
)
