# Makefile
#----------------------------------------------------------------------------------------
#
#  Project: CCore 2.00
#
#  Tag: Target/Vanilla-H
#
#  License: Boost Software License - Version 1.0 - August 17th, 2003 
#
#            see http://www.boost.org/LICENSE_1_0.txt or the local copy
#
#  Copyright (c) 2015 Sergey Strukov. All rights reserved.
#
#----------------------------------------------------------------------------------------

CCORE_ROOT = ../../..

CCORE_TARGET = Vanilla-H

SRC_PATH_LIST = . \
                $(CCORE_ROOT)/Simple/CCore/test \
                $(CCORE_ROOT)/Fundamental/CCore/test \
                $(CCORE_ROOT)/Applied/CCore/test \
                $(CCORE_ROOT)/HCore/CCore/test \
                $(CCORE_ROOT)/Target/$(CCORE_TARGET)/CCore/test \


OBJ_PATH = ../.test-obj

TARGET = main.exe

include $(CCORE_ROOT)/Target/Makefile.app

.PHONY : run

run: main.exe
	./main.exe
