/* EditWindow.h */
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

#ifndef EditWindow_h
#define EditWindow_h

#include <inc/BookLab.h>
#include <inc/InsWindow.h>
#include <inc/FieldEditor.h>
#include <inc/TempWindow.h>

#include <CCore/inc/IntervalTree.h>

namespace App {

/* classes */

class InnerBookLabWindow;

class BookLabWindow;

class EditWindow;

/* class InnerBookLabWindow */

class InnerBookLabWindow : public SubWindow
 {
  public:

   struct Config : BookLab::Config
    {
     // user

     RefVal<Fraction> width = Fraction(6,2) ;

     RefVal<VColor> focus = OrangeRed ;

     // app

     RefVal<Coord> border_dxy = 5 ;

     RefVal<VColor> back = Silver ;
     RefVal<VColor> cursor = Yellow ;
     RefVal<VColor> gray_cursor = Gray ;

     InsFrame::ConfigType ins_cfg;
     FieldFrame::ConfigType field_cfg;
     TempFrame::ConfigType temp_cfg;

     template <class AppPref>
     Config(const UserPreference &user_pref,const AppPref &app_pref) noexcept
      : BookLab::Config(user_pref,app_pref),
        ins_cfg(user_pref,app_pref),
        field_cfg(user_pref,app_pref),
        temp_cfg(user_pref,app_pref)
      {
       bindUser(user_pref.get(),user_pref.getSmartConfig());
       bindApp(app_pref.get());
      }

     template <class Bag,class Proxy>
     void bindUser(const Bag &bag,Proxy)
      {
       width.bind(bag.width);
       focus.bind(bag.focus);
      }

     template <class Bag>
     void bindApp(const Bag &bag)
      {
       border_dxy.bind(bag.border_dxy);
       back.bind(bag.back);
       cursor.bind(bag.cursor);
       gray_cursor.bind(bag.gray_cursor);
      }
    };

   using ConfigType = Config ;

  private:

   const Config &cfg;

   BookLab::Book book;
   mutable BookLab::PaneRef cursor;

   bool focus = false ;

   // frames

   InsFrame ins_frame;
   mutable FieldFrame field_frame;
   mutable TempFrame temp_frame;

   // scroll

   ScrollPos sx;
   ScrollPos sy;

   // layout

   mutable DynArray<BookLab::PaneRef> refs;
   mutable IntervalTree<Coord> tree;

   mutable Point size; // without border

   mutable bool ok = false ;
   mutable bool block_cache = false ;

  private:

   void clean();

   void update(bool mod);

   [[nodiscard]] bool cache() const;

   BookLab::PaneRef getRef(Point &point) const;

   void setCursor(BookLab::PaneRef cur);

   void noCursor() const;

   template <class T>
   bool insItem(T *) { return false; }

   bool insItem(BookLab::FrameList *ptr);

   bool insItem(BookLab::ItemList *ptr);

   bool insItem(BookLab::Element *ptr);

   void insFirstElement();

   template <class T>
   bool insExtern(T *) { return false; }

   bool insExtern(BookLab::Element *ptr);

   void listPrev();

   void listNext();

   void listBeg();

   void listEnd();

  private:

   static ulen Delta(ulen delta,bool mul_flag) { return mul_flag? 10u*delta : delta ; }

   void addXPos(ulen delta,bool mul_flag);

   void subXPos(ulen delta,bool mul_flag);

   void addYPos(ulen delta,bool mul_flag);

   void subYPos(ulen delta,bool mul_flag);

   void begXPos();

   void endXPos();

   void begYPos();

   void endYPos();

   void addYPosPage();

   void subYPosPage();

  private:

   Point getBase() const { return Point((Coord)sx.pos,(Coord)sy.pos); }

   void posX(ulen pos);

   void posY(ulen pos);

   SignalConnector<InnerBookLabWindow,ulen> connector_posX;
   SignalConnector<InnerBookLabWindow,ulen> connector_posY;

   void updated(unsigned flags);

   SignalConnector<InnerBookLabWindow,unsigned> connector_updated;

   void ins_destroyed();

   SignalConnector<InnerBookLabWindow> connector_ins_destroyed;

   void field_modified(bool flag);

   SignalConnector<InnerBookLabWindow,bool> connector_field_modified;

   void askCopy(ulen slot);

   SignalConnector<InnerBookLabWindow,ulen> connector_askCopy;

   void askPast(ulen slot);

   SignalConnector<InnerBookLabWindow,ulen> connector_askPast;

   void askProbe();

   SignalConnector<InnerBookLabWindow> connector_askProbe;

  public:

   InnerBookLabWindow(SubWindowHost &host,const Config &cfg,Signal<> &update);

   virtual ~InnerBookLabWindow();

   // methods

   bool hasStartPage() const { return book.hasStartPage(); }

   void prepare(const AppState &app_state)
    {
     field_frame.prepare(app_state);
     temp_frame.prepare(app_state);
    }

   void save(AppState &app_state)
    {
     field_frame.save(app_state);
     temp_frame.save(app_state);
    }

   Point getMinSize(Point cap=Point::Max()) const;

   void collect() { book.collect(); }

   void blank();

   ErrorText load(StrLen file_name,PtrLen<char> ebuf);

   ErrorText save(StrLen file_name,PtrLen<char> ebuf) const;

   ErrorText link(PtrLen<char> ebuf);

   ErrorText bookTo(StrLen file_name,PtrLen<char> ebuf) const;

   ErrorText bookincTo(StrLen file_name,PtrLen<char> ebuf) const;

   void showTemp();

   void insItem();

   void insExtern();

   void delItem();

   void upItem();

   void downItem();

   // special methods

   bool shortDX() const { return sx.tooShort(); }

   bool shortDY() const { return sy.tooShort();  }

   ScrollPos getScrollXRange() const { return sx; }

   ScrollPos getScrollYRange() const { return sy; }

   void adjustScrollPos();

   void connect(Signal<ulen> &scroll_x,Signal<ulen> &scroll_y)
    {
     connector_posX.connect(scroll_x);
     connector_posY.connect(scroll_y);
    }

   // drawing

   virtual void layout();

   virtual void draw(DrawBuf buf,DrawParam draw_param) const;

   // base

   virtual void open();

   // keyboard

   virtual void gainFocus();

   virtual void looseFocus();

   // mouse

   virtual MouseShape getMouseShape(Point point,KeyMod kmod) const;

   // user input

   virtual void react(UserAction action);

   void react_Key(VKey vkey,KeyMod kmod,unsigned repeat);

   void react_LeftClick(Point point,MouseKey mkey);

   void react_RightClick(Point point,MouseKey mkey);

   void react_Wheel(Point point,MouseKey mkey,Coord delta);

   // signals

   Signal<ulen> scroll_x;
   Signal<ulen> scroll_y;

   Signal<> changed;
   Signal<> modified;
   Signal<UserAction> &keyPressed;
 };

/* class BookLabWindow */

class BookLabWindow : public ScrollableWindow<InnerBookLabWindow>
 {
   void changed();

   SignalConnector<BookLabWindow> connector_changed;

  public:

   BookLabWindow(SubWindowHost &host,const ConfigType &cfg,Signal<> &update);

   virtual ~BookLabWindow();

   // methods

   bool hasStartPage() const { return window.hasStartPage(); }

   void prepare(const AppState &app_state) { window.prepare(app_state); }

   void save(AppState &app_state) { window.save(app_state); }

   void collect() { window.collect(); }

   void blank() { window.blank(); }

   ErrorText load(StrLen file_name,PtrLen<char> ebuf) { return window.load(file_name,ebuf); }

   ErrorText save(StrLen file_name,PtrLen<char> ebuf) const { return window.save(file_name,ebuf); }

   ErrorText link(PtrLen<char> ebuf) { return window.link(ebuf); }

   ErrorText book(StrLen file_name,PtrLen<char> ebuf) const { return window.bookTo(file_name,ebuf); }

   ErrorText bookinc(StrLen file_name,PtrLen<char> ebuf) const { return window.bookincTo(file_name,ebuf); }

   void showTemp() { window.showTemp(); }

   void insItem() { window.insItem(); }

   void insExtern() { window.insExtern(); }

   void upItem() { window.upItem(); }

   void downItem() { window.downItem(); }

   void delItem() { window.delItem(); }

   // drawing

   virtual void drawBack(DrawBuf buf,DrawParam &draw_param) const;

   // signals

   Signal<> &modified;
   Signal<UserAction> &keyPressed;
 };

/* class EditWindow */

class EditWindow : public ComboWindow
 {
  public:

   struct Config
    {
     // user

     RefVal<Coord> space_dxy = 10 ;

     RefVal<VColor> back = Silver ;

     CtorRefVal<RefLabelWindow::ConfigType> label_cfg;
     CtorRefVal<TextLineWindow::ConfigType> text_cfg;
     CtorRefVal<YDoubleLineWindow::ConfigType> dline_cfg;
     CtorRefVal<RefButtonWindow::ConfigType> btn_cfg;
     CtorRefVal<KnobWindow::ConfigType> knob_cfg;
     CtorRefVal<MessageFrame::AlertConfigType> msg_cfg;
     CtorRefVal<FileFrame::ConfigType> file_cfg;

     RefVal<String> text_Error    = "Error"_str ;
     RefVal<String> text_SaveFile = "Select a file to save to"_str ;

     // app

     RefVal<String> text_NoFile = "<No file>"_str ;
     RefVal<String> text_File   = "File"_str ;
     RefVal<String> text_Save   = "Save"_str ;
     RefVal<String> text_Link   = "Link"_str ;
     RefVal<String> text_Book   = "Book"_str ;
     RefVal<String> text_Extern = "Extern"_str ;
     RefVal<String> text_Temp   = "Temp"_str ;

     BookLabWindow::ConfigType book_cfg;

     template <class AppPref>
     Config(const UserPreference &user_pref,const AppPref &app_pref) noexcept
      : book_cfg(user_pref,app_pref)
      {
       bindUser(user_pref.get(),user_pref.getSmartConfig());
       bindApp(app_pref.get());
      }

     template <class Bag,class Proxy>
     void bindUser(const Bag &bag,Proxy proxy)
      {
       space_dxy.bind(bag.space_dxy);
       back.bind(bag.back);
       text_Error.bind(bag.text_Error);
       text_SaveFile.bind(bag.text_SaveFile);

       label_cfg.bind(proxy);
       text_cfg.bind(proxy);
       dline_cfg.bind(proxy);
       btn_cfg.bind(proxy);
       knob_cfg.bind(proxy);
       msg_cfg.bind(proxy);
       file_cfg.bind(proxy);
      }

     template <class Bag>
     void bindApp(const Bag &bag)
      {
       text_NoFile.bind(bag.text_NoFile);
       text_File.bind(bag.text_File);
       text_Save.bind(bag.text_Save);
       text_Link.bind(bag.text_Link);
       text_Book.bind(bag.text_Book);
       text_Extern.bind(bag.text_Extern);
       text_Temp.bind(bag.text_Temp);
      }
    };

   using ConfigType = Config ;

  private:

   const Config &cfg;

   RefLabelWindow label_file;
   TextLineWindow text_file;

   RefButtonWindow btn_save;
   RefButtonWindow btn_link;
   RefButtonWindow btn_book;

   YDoubleLineWindow line1;

   KnobWindow knob_ins;
   KnobWindow knob_up;
   KnobWindow knob_down;

   YDoubleLineWindow line2;

   KnobWindow knob_del;

   YDoubleLineWindow line3;

   RefButtonWindow btn_extern;
   RefButtonWindow btn_temp;

   BookLabWindow book;

   bool has_file = false ;

   unsigned tick_count = 0 ;

   // frames

   MessageFrame msg_frame;
   FileFrame book_frame;
   FileFrame bookinc_frame;

  private:

   void clearModified() { text_file.alert(false); }

   void errorMsg(StrLen etext);

   bool saveFile(StrLen file_name);

   void book_modified();

   SignalConnector<EditWindow> connector_book_modified;

   void save_pressed();

   SignalConnector<EditWindow> connector_save_pressed;

   void link_pressed() { link(); }

   SignalConnector<EditWindow> connector_link_pressed;

   SignalConnector<EditWindow> connector_book_pressed;

   SignalConnector<BookLabWindow> connector_extern_pressed;

   SignalConnector<BookLabWindow> connector_temp_pressed;

   void msg_destroyed();

   SignalConnector<EditWindow> connector_msg_destroyed;

   void book_destroyed();

   void bookinc_destroyed();

   SignalConnector<EditWindow> connector_book_destroyed;
   SignalConnector<EditWindow> connector_bookinc_destroyed;

   DeferInput<EditWindow> input;

   void tick();

   DeferTick defer_tick;

  private:

   SignalConnector<BookLabWindow> connector_ins_pressed;
   SignalConnector<BookLabWindow> connector_up_pressed;
   SignalConnector<BookLabWindow> connector_down_pressed;
   SignalConnector<BookLabWindow> connector_del_pressed;

  public:

   EditWindow(SubWindowHost &host,const Config &cfg,Signal<> &update);

   virtual ~EditWindow();

   // methods

   void prepare(const AppState &app_state) { book.prepare(app_state); }

   void save(AppState &app_state) { book.save(app_state); }

   Point getMinSize() const;

   bool isModified() const;

   void blank();

   void load(StrLen file_name);

   bool save();

   void save(StrLen file_name);

   bool link();

   void saveBook();

   // drawing

   virtual void layout();

   virtual void drawBack(DrawBuf buf,DrawParam &draw_param) const;

   // base

   virtual void open();

   virtual void close();

   // signals

   Signal<> askSave;
   Signal<UserAction> &keyPressed;
 };

} // namespace App

#endif

