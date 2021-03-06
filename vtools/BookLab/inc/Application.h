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

struct AppPreferenceBag
 {
  // common

  String title = "BookLab"_str ;

  // menu

  String menu_File    = "@File"_str ;
  String menu_Options = "@Options"_str ;
  String menu_New     = "@New"_str ;
  String menu_Open    = "@Open"_str ;
  String menu_Save    = "@Save"_str ;
  String menu_SaveAs  = "Save @as"_str ;
  String menu_Exit    = "E@xit"_str ;
  String menu_Global  = "@Global"_str ;
  String menu_App     = "@Application"_str ;

  // book

  String text_NoFile = "<No file>"_str ;
  String text_File   = "File"_str ;
  String text_Save   = "Save"_str ;
  String text_Link   = "Link"_str ;
  String text_Book   = "Book"_str ;
  String text_Extern = "Extern"_str ;
  String text_Temp   = "Temp"_str ;

  String text_Copy = "Copy"_str ;
  String text_Past = "Past"_str ;
  String text_Del  =  "Del"_str ;
  String text_Name = "Name"_str ;

  Coord border_dxy = 5 ;

  Fraction line_width = Fraction(6,2) ;
  Fraction textedit_width = Fraction(6,2) ;

  Coord table_dxy = 3 ;
  Coord element_space = 5 ;
  Coord knob_dxy = 20 ;

  VColor back = Silver ;
  VColor cursor = Yellow ;
  VColor gray_cursor = Gray ;

  VColor table   = Black ;
  VColor text    = Blue ;
  VColor element = Black ;
  VColor comment = ForestGreen ;

  VColor textedit_text    =  Black ;
  VColor textedit_endspan = GrayColor(0xD0) ;
  VColor textedit_line    =   Blue ;
  VColor textedit_alert   =    Red ;
  VColor textedit_cursor  =   Blue ;
  VColor textedit_select  = Yellow ;

  FontCouple text_font;
  FontCouple element_font;
  FontCouple comment_font;
  FontCouple textedit_font;

  String ins_title = "Select element"_str ;
  String field_title = "Edit field"_str ;
  String temp_title = "Temp pad"_str ;

  // constructors

  AppPreferenceBag() noexcept {}

  // methods

  template <class Ptr,class Func>
  static void Members(Ptr ptr,Func func);

  void bindItems(ConfigItemBind &binder);

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
  func("text_Save"_c,ptr->text_Save);
  func("text_Link"_c,ptr->text_Link);
  func("text_Book"_c,ptr->text_Book);
  func("text_Extern"_c,ptr->text_Extern);
  func("text_Temp"_c,ptr->text_Temp);
  func("text_Copy"_c,ptr->text_Copy);
  func("text_Past"_c,ptr->text_Past);
  func("text_Del"_c,ptr->text_Del);
  func("text_Name"_c,ptr->text_Name);
  func("border_dxy"_c,ptr->border_dxy);
  func("line_width"_c,ptr->line_width);
  func("textedit_width"_c,ptr->textedit_width);
  func("table_dxy"_c,ptr->table_dxy);
  func("element_space"_c,ptr->element_space);
  func("knob_dxy"_c,ptr->knob_dxy);
  func("back"_c,ptr->back);
  func("cursor"_c,ptr->cursor);
  func("table"_c,ptr->table);
  func("text_"_c,ptr->text);
  func("element"_c,ptr->element);
  func("comment"_c,ptr->comment);
  func("textedit_text"_c,ptr->textedit_text);
  func("textedit_endspan"_c,ptr->textedit_endspan);
  func("textedit_line"_c,ptr->textedit_line);
  func("textedit_alert"_c,ptr->textedit_alert);
  func("textedit_cursor"_c,ptr->textedit_cursor);
  func("textedit_select"_c,ptr->textedit_select);
  func("gray_cursor"_c,ptr->gray_cursor);
  func("text_font"_c,ptr->text_font);
  func("element_font"_c,ptr->element_font);
  func("comment_font"_c,ptr->comment_font);
  func("textedit_font"_c,ptr->textedit_font);
  func("ins_title"_c,ptr->ins_title);
  func("field_title"_c,ptr->field_title);
  func("temp_title"_c,ptr->temp_title);
 }

/* struct AppProp */

struct AppProp
 {
  static StrLen Key() { return AppKey(); }

  static Picture Icon() { return DefaultAppIcon(); }

  using PreferenceBag = AppPreferenceBag ;

  using ClientWindow = App::ClientWindow ;

  using Opt = OptFileName ;

  using Persist = AppState ;

  static constexpr PrepareOpt Prepare = PreparePersist ;
 };

} // namespace App

#endif

