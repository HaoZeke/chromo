#
#      Makefile for Python-libs of Fortran programs
#
#                                        (A.F. 08/12)
#

CVendor = "GNU"
Config?="Release"


# For f2py
LOGF = impy_openlogfile impy_closelogfile
export NPY_DISTUTILS_APPEND_FLAGS=0

define \n


endef

#######################################################################
#
#   compiler
#
#######################################################################

ifeq ($(CVendor),"GNU")
	#  GNU
	FC = gfortran
	F2PY_C = gnu95
	ifeq ($(OS),Windows_NT)
		F2PY_CCONF = --compiler=mingw32 --fcompiler=$(F2PY_C)
	else
		F2PY_CCONF = --compiler=unix --fcompiler=$(F2PY_C)
	endif
else
	#  Intel
	FC = ifort
	F2PY_C = intelem
endif

#######################################################################
#
#   compiler options for different platforms
#
#######################################################################
ifeq ($(CVendor),"GNU")
	ifeq ($(Config),"Debug")
		# GNU Debug
		OPT = -fPIC -Wall -fbounds-check -O0 -g \
			  -ffpe-trap=invalid,zero,overflow -Wuninitialized
		OPTF90 = -fPIC -Wall -fbounds-check -O0 -g \
			  -ffpe-trap=invalid,zero,overflow -Wuninitialized \
			  -fno-second-underscore
		#OPT = -fPIC -Wall -Wno-uninitialized -Wno-unused-variable -O3 -g -ffpe-trap=invalid,zero,overflow
	else
		# GNU Release
		#OPT = -O0 -fPIC
		OPT = -O3 -Wno-uninitialized -fPIC
		OPTF90 = -O3 -Wno-uninitialized -fPIC -fno-second-underscore 
	endif
else
	ifeq ($(Config),"Debug")
	# Intel Debug (-gen-interfaces -warn interfaces)
		OPT = -check bounds -O0 -g -check pointer -fpe0 -traceback
		OPTF90 = -check bounds -O0 -g -check pointer -fpe0 -traceback \ 
			 -cpp -ffree-form -Wobsolescent -fno-second-underscore
	else
		# Intel Release
		OPTF90 = -fast -fpe0 \ 
		      -cpp -ffree-form -Wobsolescent -fno-second-underscore
		OPT = -fast -fpe0	
	endif
endif

#######################################################################
#
#   F2PY
#
#######################################################################
#general version for signature file extraction and linking
ifeq ($(Config),"Debug")
	F2PY = python -m numpy.f2py
else
	F2PY = python -m numpy.f2py --quiet
endif
#additional flags for linker
F2PY_L = $(F2PY)

# Portability (I know that this is insane, but still better then rewriting
# everything in cmake. In fact this worked quite fine!)
ifeq ($(OS),Windows_NT)
  DEL_COMMAND = del /q /f
  MKDIR_COMMAND = if not exist "$(LIB_DIR)" mkdir
  COPY_COMMAND = copy /b
  COPY_DUMP = > nul  2>&1
  PATHSEP2=\\
  PATHSEP=$(strip $(PATHSEP2))
  # Shared library suffix
  LEXT?=$(shell python -c "import sysconfig; print('.cp' + sysconfig.get_config_var('py_version_nodot') + '-' + sysconfig.get_platform().replace('-','_') + sysconfig.get_config_var('EXT_SUFFIX'))")
else
  DEL_COMMAND = rm -rf
  MKDIR_COMMAND = mkdir -p
  COPY_COMMAND = cp
  COPY_DUMP =
  PATHSEP=/
  LEXT?=$(shell python -c "import sysconfig; print(sysconfig.get_config_var('EXT_SUFFIX'))")
endif

WORK_DIR = $(CURDIR)
LIB_DIR?="$(WORK_DIR)/lib"
RND = $(CURDIR)$(PATHSEP)src$(PATHSEP)rangen.o

#######################################################################
#
#   Targets
#
#######################################################################

export

all: odir src

.PHONY: odir
odir:
	 $(MKDIR_COMMAND) "$(LIB_DIR)"

.PHONY: src
src:
	$(MAKE) -C $@

.PHONY: clean
clean:
	$(DEL_COMMAND) $(TARGET) *.o *.prj *.chk core *$(LEXT) $(COPY_DUMP)
	$(MAKE) --directory=src clean

.PHONY: distclean
distclean: clean
	$(DEL_COMMAND) *$(LEXT) *.pyf *.dSYM lib$(PATHSEP)* $(COPY_DUMP)
	$(MAKE) --directory=src distclean

%.o: %.f
	$(FC) -c $(OPT) -cpp $<

%.o: %.f90
	$(FC) -c $(OPTF90) -cpp $<
