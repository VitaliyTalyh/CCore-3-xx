/* Desktop.h */
//----------------------------------------------------------------------------------------
//
//  Project: CCore 3.50
//
//  Tag: Target/WIN64utf8
//
//  License: Boost Software License - Version 1.0 - August 17th, 2003
//
//            see http://www.boost.org/LICENSE_1_0.txt or the local copy
//
//  Copyright (c) 2018 Sergey Strukov. All rights reserved.
//
//----------------------------------------------------------------------------------------

#ifndef CCore_inc_video_Desktop_h
#define CCore_inc_video_Desktop_h

#include <CCore/inc/video/FrameWindow.h>
#include <CCore/inc/GenFile.h>
#include <CCore/inc/MakeString.h>
#include <CCore/inc/Cmp.h>
#include <CCore/inc/CharProp.h>
#include <CCore/inc/Utf8.h>

namespace CCore {
namespace Video {

/* types */

using DesktopColor = RawColor32 ;

/* functions */

void TickEntryEvent();

void TickLeaveEvent();

void AbortMsgBox(StrLen text);

void ErrorMsgBox(StrLen text,StrLen title);

CmdDisplay StartDisplay();

Char ToLowerCase(Char ch);

void ShellVerb(StrLen verb,StrLen file_name);

/* classes */

class CharMapTable;

class SystemFontDirs;

class HomeDir;

class DefaultDesktopPtr;

/* class CharMapTable */

class CharMapTable : NoCopy
 {
   Unicode table[256];

  private:

   static uint8 Index(CharCodeType ch) { return uint8(ch); }

  public:

   CharMapTable();

   Unicode operator () (CharCodeType ch) const { return table[Index(ch)]; }
 };

/* class SystemFontDirs */

class SystemFontDirs : NoCopy
 {
   MakeString<MaxPathLen> buf;
   StrLen dir;

  public:

   SystemFontDirs();

   PtrLen<const StrLen> getList() const { return Range(&dir,1); }
 };

/* class HomeDir */

class HomeDir : NoCopy
 {
   MakeString<MaxPathLen> buf;
   StrLen dir;

  public:

   HomeDir();

   StrLen get() const { return dir; }
 };

/* class DefaultDesktopPtr */

class DefaultDesktopPtr : NoCopy
 {
   Desktop *ptr;

  public:

   DefaultDesktopPtr();

   operator Desktop * () const { return ptr; }

   Desktop * operator -> () const { return ptr; }
 };

/* global DefaultDesktop */

extern DefaultDesktopPtr DefaultDesktop;

} // namespace Video
} // namespace CCore

#endif


