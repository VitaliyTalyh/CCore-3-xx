/* Symbol.h */
//----------------------------------------------------------------------------------------
//
//  Project: CCore 3.50
//
//  Tag: Simple Mini
//
//  License: Boost Software License - Version 1.0 - August 17th, 2003
//
//            see http://www.boost.org/LICENSE_1_0.txt or the local copy
//
//  Copyright (c) 2017 Sergey Strukov. All rights reserved.
//
//----------------------------------------------------------------------------------------

#ifndef CCore_inc_Symbol_h
#define CCore_inc_Symbol_h

#include <CCore/inc/CharProp.h>

namespace CCore {

/* type Symbol */

#ifdef CCORE_UTF8

using Symbol = Utf8Code ;

#else

using Symbol = char ;

#endif

/* const MaxSymbolLen */

#ifdef CCORE_UTF8

inline constexpr unsigned MaxSymbolLen = 4 ;

#else

inline constexpr unsigned MaxSymbolLen = 1 ;

#endif

/* functions */

#ifdef CCORE_UTF8

inline int ToChar(Utf8Code ch) { return (ch.getLen()==1)?ch[0]:(-1); }

inline ulen SymbolLen(Utf8Code ch) { return ch.getLen(); }

inline StrLen SymbolRange(const Utf8Code &ch) { return ch.getRange(); }

inline Utf8Code PeekSymbol(StrLen text) // +text
 {
  return PeekUtf8(text);
 }

inline Utf8Code PeekSymbol_guarded(StrLen text) // +text
 {
  return PeekUtf8_guarded(text);
 }

inline StrLen TrimText(StrLen text)
 {
  TrimUtf8End(text);

  return text;
 }

#else

inline char PeekSymbol(StrLen text) // +text
 {
  return *text;
 }

inline char PeekSymbol_guarded(StrLen text) // +text
 {
  return *text;
 }

inline StrLen TrimText(StrLen text)
 {
  return text;
 }

#endif

inline int ToChar(char ch) { return ch; }

inline ulen SymbolLen(char ch) { Used(ch); return 1; }

inline StrLen SymbolRange(const char &ch) { return Single(ch); }

/* type Char */

#ifdef CCORE_UTF8

using Char = Unicode ;

inline bool SymCharIsSpecial(Char ch) { return (ch<128)?CharIsSpecial((char)ch):false; }

inline bool SymCharIsVisible(Char ch) { return (ch<128)?CharIsVisible((char)ch):true; }

inline bool SymCharIsPrintable(Char ch) { return (ch<128)?CharIsPrintable((char)ch):true; }

inline bool SymCharIsSpace(Char ch) { return (ch<128)?CharIsSpace((char)ch):false; }

inline int SymCharDecValue(Char ch) { return (ch<128)?CharDecValue((char)ch):(-1); }

inline int SymCharHexValue(Char ch) { return (ch<128)?CharHexValue((char)ch):(-1); }

#else

using Char = char ;

inline bool SymCharIsSpecial(Char ch) { return CharIsSpecial(ch); }

inline bool SymCharIsVisible(Char ch) { return CharIsVisible(ch); }

inline bool SymCharIsPrintable(Char ch) { return CharIsPrintable(ch); }

inline bool SymCharIsSpace(Char ch) { return CharIsSpace(ch); }

inline int SymCharDecValue(Char ch) { return CharDecValue(ch); }

inline int SymCharHexValue(Char ch) { return CharHexValue(ch); }

#endif

/* functions */

#ifdef CCORE_UTF8

inline int ToChar(Unicode ch) { return (ch<128)?char(ch):(-1); }

inline Char PeekChar(StrLen text) // +text
 {
  return PeekUtf8_unicode(text);
 }

inline Char CutChar(StrLen &text) // +text
 {
  return CutUtf8_unicode(text);
 }

inline Char PeekChar_guarded(StrLen text) // +text
 {
  return PeekUtf8_unicode_guarded(text);
 }

inline Char CutChar_guarded(StrLen &text) // +text
 {
  return CutUtf8_unicode_guarded(text);
 }

#else

inline Char PeekChar(StrLen text) // +text
 {
  return *text;
 }

inline Char CutChar(StrLen &text) // +text
 {
  char ch=*text;

  ++text;

  return ch;
 }

inline Char PeekChar_guarded(StrLen text) // +text
 {
  return *text;
 }

inline Char CutChar_guarded(StrLen &text) // +text
 {
  char ch=*text;

  ++text;

  return ch;
 }

#endif

} // namespace CCore

#endif

