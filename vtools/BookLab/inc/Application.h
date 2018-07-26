/* Application.h */
//----------------------------------------------------------------------------------------
//
//  Project: BookLab 1.00
//
//  License: Boost Software License - Version 1.0 - August 17th, 2003
//
//            see http://www.boost.org/LICENSE_1_0.txt or the local copy
//
//  Copyright (c) 2018 Sergey Strukov. All rights reserved.
//
//----------------------------------------------------------------------------------------

#ifndef Application_h
#define Application_h

#include <CCore/inc/video/AppMain.h>

#include <inc/Client.h>

namespace App {

/* classes */

struct AppPreferenceBag;

struct AppProp;

/* struct AppPreferenceBag */

struct AppPreferenceBag : ConfigItemHost
 {
  // common

  DefString title = "BookLab"_def ;

  // menu

  DefString menu_File    = "@File"_def ;
  DefString menu_Options = "@Options"_def ;
  DefString menu_New     = "@New"_def ;
  DefString menu_Open    = "@Open"_def ;
  DefString menu_Save    = "@Save"_def ;
  DefString menu_SaveAs  = "Save @as"_def ;
  DefString menu_Exit    = "E@xit"_def ;
  DefString menu_Global  = "@Global"_def ;
  DefString menu_App     = "@Application"_def ;

  // book

  DefString text_NoFile = "<No file>"_def ;
  DefString text_File = "File"_def ;
  DefString text_Link = "Link"_def ;
  DefString text_Book = "Book"_def ;

  Coord border_dxy = 5 ;

  Fraction line_width = Fraction(6,2) ;

  Coord table_dxy = 3 ;
  Coord element_space = 5 ;
  Coord knob_dxy = 20 ;

  VColor back = Silver ;

  VColor table   = Black ;
  VColor text    = Blue ;
  VColor element = Black ;
  VColor comment = ForestGreen ;

  FontCouple text_font;
  FontCouple element_font;
  FontCouple comment_font;

  // constructors

  AppPreferenceBag() noexcept {}

  // methods

  template <class Ptr,class Func>
  static void Members(Ptr ptr,Func func);

  virtual void bind(ConfigItemBind &binder);

  void findFonts();
 };

template <class Ptr,class Func>
void AppPreferenceBag::Members(Ptr ptr,Func func)
 {
  func("title"_c,ptr->title);
  func("menu_File"_c,ptr->menu_File);
  func("menu_Options"_c,ptr->menu_Options);
  func("menu_New"_c,ptr->menu_New);
  func("menu_Open"_c,ptr->menu_Open);
  func("menu_Save"_c,ptr->menu_Save);
  func("menu_SaveAs"_c,ptr->menu_SaveAs);
  func("menu_Exit"_c,ptr->menu_Exit);
  func("menu_Global"_c,ptr->menu_Global);
  func("menu_App"_c,ptr->menu_App);
  func("text_NoFile"_c,ptr->text_NoFile);
  func("text_File"_c,ptr->text_File);
  func("text_Link"_c,ptr->text_Link);
  func("text_Book"_c,ptr->text_Book);
  func("border_dxy"_c,ptr->border_dxy);
  func("line_width"_c,ptr->line_width);
  func("table_dxy"_c,ptr->table_dxy);
  func("element_space"_c,ptr->element_space);
  func("knob_dxy"_c,ptr->knob_dxy);
  func("back"_c,ptr->back);
  func("table"_c,ptr->table);
  func("text_"_c,ptr->text);
  func("element"_c,ptr->element);
  func("comment"_c,ptr->comment);
  func("text_font"_c,ptr->text_font);
  func("element_font"_c,ptr->element_font);
  func("comment_font"_c,ptr->comment_font);
 }

/* struct AppProp */

struct AppProp
 {
  static StrLen Key() { return AppKey(); }

  static Picture Icon() { return DefaultAppIcon(); }

  using PreferenceBag = AppPreferenceBag ;

  using ClientWindow = App::ClientWindow ;

  using Opt = OptFileName ;

  static constexpr PrepareOpt Prepare = PrepareRandom ;
 };

} // namespace App

#endif

