# Makefile
#----------------------------------------------------------------------------------------
#
#  Project: DDLTypeSet 1.00
#
#  License: Boost Software License - Version 1.0 - August 17th, 2003 
#
#            see http://www.boost.org/LICENSE_1_0.txt or the local copy
#
#  Copyright (c) 2015 Sergey Strukov. All rights reserved.
#
#----------------------------------------------------------------------------------------

CCORE_ROOT = ../..

include $(CCORE_ROOT)/Makefile.host

TARGET = $(HOME)/bin/CCore-DDLTypeSet.exe

include $(CCORE_ROOT)/Target/Makefile.app

.PHONY : run

run: $(TARGET) 
	$(TARGET) ../CondLangLR1/LangTypes.ddl TypeDef.gen.h TypeSet.gen.h

TOOLS = $(CCORE_ROOT)/Desktop/Tools/CCore/src/video

ddl:
	$(TARGET) $(TOOLS)/FontInfo.ddl $(TOOLS)/FontInfo.TypeDef.gen.h $(TOOLS)/FontInfo.TypeSet.gen.h 




