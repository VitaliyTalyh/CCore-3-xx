# Makefile
#----------------------------------------------------------------------------------------
#
#  Project: BeagleBootServer 1.00
#
#  License: Boost Software License - Version 1.0 - August 17th, 2003 
#
#            see http://www.boost.org/LICENSE_1_0.txt or the local copy
#
#  Copyright (c) 2016 Sergey Strukov. All rights reserved.
#
#----------------------------------------------------------------------------------------

CCORE_ROOT = ../../../..

CCORE_TARGET = BeagleBoneBlack

TARGET = main.exe

include $(CCORE_ROOT)/Target/Makefile.app

.PHONY : run

run: $(TARGET)
	CCore-ELFtoUboot.exe $(TARGET) D:/Tools/TFTPD64/bootfile





