# If you move this project you can change the directory
# to match your GBDK root directory (ex: GBDK_HOME = "C:/GBDK/"
ifndef GBDK_HOME
	GBDK_HOME = ../gbdk/
endif

#LCC is the compiler used to compile and link the project
LCC = $(GBDK_HOME)bin/lcc -Wa-l -Wl-m -Wl-j

# BINS is the list of output files to be generated
BINS	= griff-example.gb

# GBDK_DEBUG = ON
ifdef GBDK_DEBUG
	LCCFLAGS += -debug -v
endif

# The default target is to build all the output files
all:	$(BINS)

compile.bat: Makefile
	@echo "REM Automatically generated from Makefile" > compile.bat
	@make -sn | sed y/\\//\\\\/ | sed s/mkdir\ -p\/mkdir\/ | grep -v make >> compile.bat

# Build `griff-example.gb` from the main C file and the data source
griff-example.gb:	griff-example.c LaroldsJubilantJunkyard.c
	$(LCC) $(LCCFLAGS) -o $@ $^

clean:
	rm -f *.o *.lst *.map *.gb *~ *.rel *.cdb *.ihx *.lnk *.sym *.asm *.noi *.rst

