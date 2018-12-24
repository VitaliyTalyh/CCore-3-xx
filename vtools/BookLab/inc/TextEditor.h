/* TextEditor.h */
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

#ifndef TextEditor_h
#define TextEditor_h

#include <inc/BookLab.h>

namespace App {

/* classes */

class TextWindow;

class ScrollTextWindow;

class TextEditor;

/* class TextWindow */

class TextWindow : public SubWindow
 {
  public:

   struct Config
    {
     // user

     RefVal<VColor> back = Silver ;

     // app

     template <class AppPref>
     Config(const UserPreference &user_pref,const AppPref &app_pref) noexcept
      {
       bindUser(user_pref.get(),user_pref.getSmartConfig());
       bindApp(app_pref.get());
      }

     template <class Bag,class Proxy>
     void bindUser(const Bag &bag,Proxy proxy)
      {
       Used(proxy);

       back.bind(bag.back);
      }

     template <class Bag>
     void bindApp(const Bag &bag)
      {
       Used(bag);
      }
    };

   using ConfigType = Config ;

  private:

   const Config &cfg;

   // scroll

   ScrollPos sx;
   ScrollPos sy;

  private:

   Point getBase() const { return Point((Coord)sx.pos,(Coord)sy.pos); }

   void posX(ulen pos);

   void posY(ulen pos);

   SignalConnector<TextWindow,ulen> connector_posX;
   SignalConnector<TextWindow,ulen> connector_posY;

  public:

   TextWindow(SubWindowHost &host,const Config &cfg);

   virtual ~TextWindow();

   // special methods

   bool shortDX() const { return sx.tooShort(); }

   bool shortDY() const { return sy.tooShort();  }

   ScrollPos getScrollXRange() const { return sx; }

   ScrollPos getScrollYRange() const { return sy; }

   void connect(Signal<ulen> &scroll_x,Signal<ulen> &scroll_y)
    {
     connector_posX.connect(scroll_x);
     connector_posY.connect(scroll_y);
    }

   // methods

   Point getMinSize(Point cap) const;

   void blank();

   void load(PtrLen<BookLab::Span> text);

   void load(PtrLen<BookLab::TextLine> text);

   void save(DynArray<BookLab::Span> *pad);

   void save(DynArray<BookLab::TextLine> *pad);

   void setFormat(String name);

   void setLink(String name);

   // signals

   Signal<ulen> scroll_x;
   Signal<ulen> scroll_y;

   Signal<String> showFormat;
   Signal<String> showLink;
 };

/* class ScrollTextWindow */

class ScrollTextWindow : public ScrollableWindow<TextWindow>
 {
  public:

   using Base = ScrollableWindow<TextWindow> ;

   struct Config : Base::Config
    {
     template <class AppPref>
     Config(const UserPreference &user_pref,const AppPref &app_pref) noexcept
      : Base::Config(user_pref,app_pref)
      {
       bindScroll(user_pref.get(),user_pref.getSmartConfig());
      }
    };

   using ConfigType = Config ;

  public:

   ScrollTextWindow(SubWindowHost &host,const ConfigType &cfg);

   virtual ~ScrollTextWindow();

   // methods

   void blank() { window.blank(); }

   void load(PtrLen<BookLab::Span> text) { window.load(text); }

   void load(PtrLen<BookLab::TextLine> text) { window.load(text); }

   void save(DynArray<BookLab::Span> *pad) { window.save(pad); }

   void save(DynArray<BookLab::TextLine> *pad) { window.save(pad); }

   void setFormat(String name) { window.setFormat(name); }

   void setLink(String name) { window.setLink(name); }

   // signals

   Signal<String> &showFormat;
   Signal<String> &showLink;
 };

/* class TextEditor */

class TextEditor : public ComboWindow
 {
  public:

   struct Config
    {
     // user

     RefVal<Coord> space_dxy = 10 ;

     RefVal<VColor> back = Silver ;

     CtorRefVal<ButtonWindow::ConfigType> btn_cfg;
     CtorRefVal<LineEditWindow::ConfigType> edit_cfg;
     CtorRefVal<ContourWindow::ConfigType> cont_cfg;

     CtorRefVal<ScrollTextWindow::ConfigType> text_cfg;

     // app

     template <class AppPref>
     Config(const UserPreference &user_pref,const AppPref &app_pref) noexcept
      : text_cfg(user_pref,app_pref)
      {
       bindUser(user_pref.get(),user_pref.getSmartConfig());
       bindApp(app_pref.get());
      }

     template <class Bag,class Proxy>
     void bindUser(const Bag &bag,Proxy proxy)
      {
       space_dxy.bind(bag.space_dxy);

       back.bind(bag.back);

       btn_cfg.bind(proxy);
       edit_cfg.bind(proxy);
       cont_cfg.bind(proxy);
      }

     template <class Bag>
     void bindApp(const Bag &bag)
      {
       Used(bag);
      }
    };

   using ConfigType = Config ;

  private:

   const Config &cfg;

   ButtonWindow btn_format;
   ButtonWindow btn_link;

   LineEditWindow edit_format;
   LineEditWindow edit_link;

   ContourWindow cont;

   ScrollTextWindow edit_text;

  private:

   void format_pressed();

   void link_pressed();

   SignalConnector<TextEditor> connector_format_pressed;
   SignalConnector<TextEditor> connector_link_pressed;

   void show_format(String name);

   void show_link(String name);

   SignalConnector<TextEditor,String> connector_show_format;
   SignalConnector<TextEditor,String> connector_show_link;

  public:

   TextEditor(SubWindowHost &host,const Config &cfg);

   virtual ~TextEditor();

   // methods

   Point getMinSize() const;

   void blank();

   void load(PtrLen<BookLab::Span> text);

   void load(PtrLen<BookLab::TextLine> text);

   void save(DynArray<BookLab::Span> *pad);

   void save(DynArray<BookLab::TextLine> *pad);

   // drawing

   virtual void layout();

   virtual void drawBack(DrawBuf buf,bool drag_active) const;
 };

} // namespace App

#endif


