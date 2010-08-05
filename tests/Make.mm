# -*- Makefile -*-
#

PROJECT = mystic
PACKAGE = tests

PROJ_CLEAN += $(PROJ_CPPTESTS) log1.py log2.py log.txt paramlog*.py 

PROJ_PYTESTS = 
PROJ_CPPTESTS = 
PROJ_TESTS = $(PROJ_PYTESTS) # $(PROJ_CPPTESTS)
PROJ_LIBRARIES = -L$(BLD_LIBDIR) # -lmystic

#--------------------------------------------------------------------------
#

all: $(PROJ_TESTS)

test:
	for test in $(PROJ_TESTS) ; do $${test}; done

release: tidy
	cvs release .

update: clean
	cvs update .

#--------------------------------------------------------------------------
#


# End of file

