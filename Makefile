#
#
# Lincity does not use make tool originally
# We add it here to make very convenient install and build
#
# We also add the script to install libraries and dependencies needed to build lincity-xg

PKG_INSTALLER=sudo apt-get install
SPACER_SHOW=sudo apt-get moo

default:
	@echo ""
	@echo "Please type: requirements, configure, all, help, dbg, rel"

help:
	@echo ""
	@echo "Step 1: ./autogen.sh"
	@echo "Step 2: ./configure"
	@echo "Step 3: Build the game by typing: 'jam' in your command line"

requirements: requirements-xg requirements-ng
	$(SPACER_SHOW)

requirements-ng:
	@echo "Installing required libraries..."
	$(PKG_INSTALLER) install build-essential
	$(PKG_INSTALLER) install jam
	$(PKG_INSTALLER) install libglu1-mesa-dev freeglut3-dev mesa-common-dev
	$(PKG_INSTALLER) install svgalib-bin
	$(PKG_INSTALLER) install libphysfs*
	$(PKG_INSTALLER) install libsdl-dev libsdl-gfx* libsdl2-gfx* libsdl2-ttf* libsdl-image* libsdl-mixer* libsdl2-mixer*
	$(PKG_INSTALLER) install glee-dev
	$(PKG_INSTALLER) install libxml2 libxml2-dev
	$(PKG_INSTALLER) install libsvga1 libsvga1-dev
	
requirements-xg:
	@echo "No new requirements needed for lincity-xg at the moment"

configure:
	./autogen.sh
	./configure

# no difference at the moment
dbg:
	jam
	
rel:
	jam

all:
	jam
	
install:
	jam install

	
