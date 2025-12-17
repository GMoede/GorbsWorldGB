# If you move this project you can change the directory
# to match your GBDK root directory (ex: GBDK_HOME = "C:/GBDK/"
ifndef GBDK_HOME
	GBDK_HOME = ../gbdk/
endif

#LCC is the compiler used to compile and link the project
#-Wm-yC is used to generate a gameboy color file 
LCC = $(GBDK_HOME)bin/lcc -Wa-l -Wl-m -Wl-j -Wm-yC 
PNG2ASSET = $(GBDK_HOME)bin/png2asset 
# Define variables for clarity
WHISKY_CMD = whisky
BOTTLE_NAME = MyGBDevBottle  # Replace with your bottle's name
BGB_PATH_WIN = C:\\bgb\\bgb.exe  # Path to bgb.exe INSIDE the bottle's C: drive
ROM_PATH_MAC = $(OBJDIR)/$(PROJECTNAME).gbc  # Path to the ROM on your Mac filesystem
ROM_PATH_WIN = C:\\gorbsworld\\gorbsworld.gbc  # Path to your ROM INSIDE the bottle's C: drive (update if different)


# GBDK_DEBUG = ON
ifdef GBDK_DEBUG
	LCCFLAGS += -debug -v
endif

# You can set the name of the .gbc ROM file here
PROJECTNAME    = gorbsworld

# BINS is the list of output files to be generated
SRCDIR      = src
OBJDIR      = obj
GENDIR      = gen
RESDIR      = res
BINS	    = $(OBJDIR)/$(PROJECTNAME).gbc
CSOURCES    = $(foreach dir,$(SRCDIR),$(notdir $(wildcard $(dir)/*.c))) $(foreach dir,$(GENDIR),$(notdir $(wildcard $(dir)/*.c)))
OBJS       = $(CSOURCES:%.c=$(OBJDIR)/%.o)

LCCFLAGS = -I$(GENDIR)

all:	prepare png2asset $(BINS) run

png2asset:
	$(PNG2ASSET) $(RESDIR)/Font.png -c $(GENDIR)/Font.c -noflip -keep_palette_order -map
	$(PNG2ASSET) $(RESDIR)/splashscreen3.png -c $(GENDIR)/splashscreen3.c -map -use_map_attributes
	$(PNG2ASSET) $(RESDIR)/WalkingGorbDown.png -c $(GENDIR)/WalkingGorbDown.c -sw 16 -keep_palette_order
	$(PNG2ASSET) $(RESDIR)/WalkingGorb.png -c $(GENDIR)/WalkingGorb.c -sw 16 -keep_palette_order
	$(PNG2ASSET) $(RESDIR)/WalkingGorbUp.png -c $(GENDIR)/WalkingGorbUp.c -sw 16 -keep_palette_order
	$(PNG2ASSET) $(RESDIR)/gorbySleeping.png -c $(GENDIR)/gorbySleeping.c -sw 16 -keep_palette_order

compile.bat: Makefile
	@echo "REM Automatically generated from Makefile" > compile.bat
	@make -sn | sed y/\\//\\\\/ | sed s/mkdir\ -p\/mkdir\/ | grep -v make >> compile.bat

# Compile .c files in "src/" to .o object files
$(OBJDIR)/%.o:	$(SRCDIR)/%.c
	$(LCC) $(LCCFLAGS) -c -o $@ $<

# Compile .c files in "res/" to .o object files
$(OBJDIR)/%.o:	$(GENDIR)/%.c
	$(LCC) $(LCCFLAGS) -c -o $@ $<

# Compile .s assembly files in "src/" to .o object files
$(OBJDIR)/%.o:	$(SRCDIR)/%.s
	$(LCC) $(LCCFLAGS) -c -o $@ $<

# If needed, compile .c files in "src/" to .s assembly files
# (not required if .c is compiled directly to .o)
$(OBJDIR)/%.s:	$(SRCDIR)/%.c
	$(LCC) $(LCCFLAGS) -S -o $@ $<

# Link the compiled object files into a .gb ROM file
$(BINS):	$(OBJS)
	$(LCC) $(LCCFLAGS)  -o $(BINS) $(OBJS)


# Target to run the game in BGB
run:
	cp $(ROM_PATH_MAC) /Users/griffinmoede/Library/Containers/com.isaacmarovitz.Whisky/Bottles/FC3A5243-0D83-4E4C-9896-5110FBED9A7D/drive_c/gorbsworld/gorbsworld.gbc
	$(WHISKY_CMD) run --bottle $(BOTTLE_NAME) $(BGB_PATH_WIN)

prepare:
	mkdir -p $(OBJDIR)
	mkdir -p $(GENDIR)

clean:
#	rm -f  *.gb *.ihx *.cdb *.adb *.noi *.map
	rm -f  $(OBJDIR)/*.*
	rm -f  $(GENDIR)/*.*
