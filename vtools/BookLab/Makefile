# Makefile
#----------------------------------------------------------------------------------------
#
#  Project: BookLab 1.00
#
#  License: Boost Software License - Version 1.0 - August 17th, 2003 
#
#            see http://www.boost.org/LICENSE_1_0.txt or the local copy
#
#  Copyright (c) 2017 Sergey Strukov. All rights reserved.
#
#----------------------------------------------------------------------------------------

CCORE_ROOT = ../..

include $(CCORE_ROOT)/Makefile.host

SRC_PATH_LIST = src

TARGET = $(HOME)/bin/CCore-BookLab.exe

CCOPT_EXTRA = -I.

TARGET_DESKTOP = yes

include $(CCORE_ROOT)/Target/Makefile.app

.PHONY : run

run: $(TARGET)
	$(TARGET) docs/test1.booklab.ddl

#----------------------------------------------------------------------------------------

TypeSet = $(HOME)/bin/CCore-DDLTypeSet.exe

MakeString = $(HOME)/bin/CCore-MakeString.exe

src/./BookLab.TypeDef.gen.h : src/BookLab.ddl
	$(TypeSet) src/BookLab.ddl src/BookLab.TypeDef.gen.h src/BookLab.TypeSet.gen.h Frame

src/./BookLab.Pretext.gen.h : src/BookLab.ddl
	$(MakeString) -s src/BookLab.ddl src/BookLab.Pretext.gen.h

src/./AppState.TypeDef.gen.h : src/AppState.ddl
	$(TypeSet) src/AppState.ddl src/AppState.TypeDef.gen.h src/AppState.TypeSet.gen.h

src/./AppState.Pretext.gen.h : src/AppState.ddl
	$(MakeString) -s src/AppState.ddl src/AppState.Pretext.gen.h
