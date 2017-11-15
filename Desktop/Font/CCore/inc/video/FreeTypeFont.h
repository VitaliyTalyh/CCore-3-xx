/* FreeTypeFont.h */
//----------------------------------------------------------------------------------------
//
//  Project: CCore 3.50
//
//  Tag: Desktop
//
//  License: Boost Software License - Version 1.0 - August 17th, 2003
//
//            see http://www.boost.org/LICENSE_1_0.txt or the local copy
//
//  Copyright (c) 2017 Sergey Strukov. All rights reserved.
//
//----------------------------------------------------------------------------------------

#ifndef CCore_inc_video_FreeTypeFont_h
#define CCore_inc_video_FreeTypeFont_h

#include <CCore/inc/video/Font.h>
#include <CCore/inc/video/GammaTable.h>
#include <CCore/inc/AutoGlobal.h>

namespace CCore {
namespace Video {

/* classes */

//enum FontHintType;

//enum FontSmoothType;

class CharMapHook;

class FreeTypeFont;

class ProbeFreeTypeFont;

/* enum FontHintType */

enum FontHintType
 {
  FontHintNone,
  FontHintNative,
  FontHintAuto
 };

const char * GetTextDesc(FontHintType fht);

/* enum FontSmoothType */

enum FontSmoothType
 {
  FontSmoothNone,
  FontSmooth,
  FontSmoothLCD_RGB,
  FontSmoothLCD_BGR
 };

const char * GetTextDesc(FontSmoothType fsm);

/* class CharMapHook */

class CharMapHook : AutoGlobal<CharMapTable>::Lock
 {
   static AutoGlobal<CharMapTable> Object;

  public:

   CharMapHook() : AutoGlobal<CharMapTable>::Lock(Object) {}

   ~CharMapHook() {}

   Unicode toUnicode(CharCodeType ch) const { return (*Object)(ch); }
 };

/* class FreeTypeFont */

class FreeTypeFont : public Font
 {
   struct Global;

   struct Inner;

   class Base;

   friend class ProbeFreeTypeFont;

  private:

   Base * getBase() const;

  public:

   struct Config
    {
     FontHintType fht = FontHintAuto ;
     FontSmoothType fsm = FontSmoothLCD_RGB ;
     bool use_kerning = true ;
     int strength = 0 ;
     double gamma_order = 0 ;

     Config() noexcept {}
    };

   struct StyleFlags
    {
     bool scalable;
     bool monospace;
     bool italic;
     bool bold;
    };

   // constructors

   FreeTypeFont() noexcept {} // default, not a FreeType font!

   explicit FreeTypeFont(StrLen file_name);

   FreeTypeFont(StrLen file_name,bool &is_font);

   FreeTypeFont(StrLen dir,StrLen file_name); // dir/file_name

   ~FreeTypeFont() {}

   // set params

   void setSize(Coord dx,Coord dy);

   void setSize(Point size) { setSize(size.x,size.y); }

   void setSize(Coord dxy) { setSize(dxy,dxy); }

   void setFixedSize(ulen index);

   void setConfig(const Config &cfg);

   // get props

   StyleFlags getStyleFlags() const;

   Config getConfig() const;

   StrLen getFamily() const;

   StrLen getStyle() const;

   void getSizeList(Function<void (Coord dx,Coord dy)> func) const;
 };

/* class ProbeFreeTypeFont */

class ProbeFreeTypeFont : NoCopy
 {
   class Inner;

   Inner *ptr;

  public:

   ProbeFreeTypeFont(StrLen file_name,bool &is_font);

   ~ProbeFreeTypeFont();

   StrLen getFamily() const;

   StrLen getStyle() const;

   FreeTypeFont::StyleFlags getStyleFlags() const;
 };

} // namespace Video
} // namespace CCore

#endif
