# If you move this project you can change the directory
# to match your GBDK root directory (ex: GBDK_HOME = "C:/GBDK/"
ifndef GBDK_HOME
	GBDK_HOME = ../gbdk/
endif

#LCC is the compiler used to compile and link the project
#-Wm-yC is used to generate a gameboy color file 
LCC = $(GBDK_HOME)bin/lcc -Wa-l -Wl-m -Wl-j -Wm-yC 


# You can set the name of the .gb ROM file here
PROJECTNAME    = griff-example

# BINS is the list of output files to be generated
BINS	    = $(PROJECTNAME).gbc
CSOURCES   := $(wildcard src/*.c) $(wildcard src/graphics/*.c)
ASMSOURCES := $(wildcard *.s)

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
$(BINS):	$(CSOURCES) $(ASMSOURCES)
	$(LCC) -Iheaders -Wm-yC -o $@ $(CSOURCES) $(ASMSOURCES)

clean:
	rm -f *.o *.lst *.map *.gb *~ *.rel *.cdb *.ihx *.lnk *.sym *.asm *.noi *.rst

