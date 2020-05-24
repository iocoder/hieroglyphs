
#############################################################################
#
#                LESSONS ON EGYPTOLOGY AND EGYPTIAN LANGUAGE
#
#  AUTHOR: RAMSES A.
#  EMAIL:  admin@ramses.ca
#  GITHUB: https://github.com/iocoder/hieroglyphs
#  DATE:   JUNE 2020
#
#############################################################################
#
#  FILE:   Makefile
#  DESC:   MAKEFILE FOR LATEX DOCUMENTS
#
#############################################################################

#############################################################################
#
#  LESSONS ON EGYPTOLOGY AND EGYPTIAN LANGUAGE
#  Copyright (C) 2020  Ramses A.
#
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <https://www.gnu.org/licenses/>.
#
#############################################################################

#############################################################################
#  COMMANDS USED
#############################################################################

TEX=pdflatex -file-line-error -interaction=errorstopmode -shell-escape
DEL=rm -rf

#############################################################################
#  DEPENDENCIES
#############################################################################

STY=*.sty
IMG=img_* 
ICO=icon_*
MAK=Makefile
DEP=$(STY) $(IMG) $(ICO) $(MAK)

#############################################################################
#  TEMPORARY FILES
#############################################################################

AUX=*.aux
LOG=*.log
OUT=*.out
NAV=*.nav
TOC=*.toc
SNM=*.snm
INK=*-inkscape
TMP=$(AUX) $(LOG) $(OUT) $(NAV) $(TOC) $(SNM) $(INK)

#############################################################################
#  FINAL OBJECTS
#############################################################################

OBJ=lesson01.pdf

#############################################################################
#  RULE: PDF FILE GENERATION FROM LATEX
#############################################################################

%.pdf: %.tex $(DEP)
	$(TEX) $<
	$(TEX) $<
	$(TEX) $<
	$(DEL) $(TMP)

#############################################################################
#  RULE: MAKE ALL
#############################################################################

all: $(OBJ)

#############################################################################
#  RULE: MAKE CLEAN
#############################################################################

clean:
	$(DEL) $(TMP) $(OBJ)

