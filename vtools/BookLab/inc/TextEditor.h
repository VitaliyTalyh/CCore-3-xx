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

#include <inc/PastData.h>

#include <CCore/inc/Cmp.h>

namespace App {

/* classes */

class TextBuf;

class TextWindow;

class ScrollTextWindow;

class TextEditor;

/* class TextBuf */

class TextBuf : NoCopy
 {
   DynArray<BookLab::TextLine> *pad = 0 ;

  private:

   static void GuardNoObject();

  public:

   TextBuf();

   ~TextBuf();

   // data

   ulen getLineCount() const
    {
     return pad? pad->getLen() : 0 ;
    }

   void guard() const { if( !pad ) GuardNoObject(); }

   BookLab::TextLine & getLine(ulen index) const
    {
     guard();

     return pad->at(index);
    }

   void addLine()
    {
     guard();

     pad->append_default();
    }

   PtrLen<BookLab::TextLine> addLines(ulen count)
    {
     guard();

     return pad->extend_default(count);
    }

   BookLab::TextLine * insLine(ulen index);

   PtrLen<BookLab::TextLine> insLines(ulen index,ulen count);

   void delLine(ulen index);

   void delRange(ulen ind,ulen lim);

   // methods

   void blank();

   void load(DynArray<BookLab::TextLine> *pad);

   void save() const;
 };

/* class TextWindow */

class TextWindow : public SubWindow
 {
  public:

   struct Config
    {
     // user

     RefVal<Coord> cursor_dx = 3 ;

     RefVal<unsigned> period = 10_tick ;

     // app

     RefVal<Fraction> width = Fraction(6,2) ;

     RefVal<VColor> text    =  Black ;
     RefVal<VColor> endspan = GrayColor(0xD0) ;
     RefVal<VColor> line    =   Blue ;
     RefVal<VColor> alert   =    Red ;
     RefVal<VColor> cursor  =   Blue ;
     RefVal<VColor> select  = Yellow ;

     RefVal<Font> font;

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

       cursor_dx.bind(bag.text_cursor_dx);

       period.bind(bag.line_edit_period);
      }

     template <class Bag>
     void bindApp(const Bag &bag)
      {
       width.bind(bag.textedit_width);

       text.bind(bag.textedit_text);
       endspan.bind(bag.textedit_endspan);
       line.bind(bag.textedit_line);
       alert.bind(bag.textedit_alert);
       cursor.bind(bag.textedit_cursor);
       select.bind(bag.textedit_select);

       font.bind(bag.textedit_font.font);
      }
    };

   using ConfigType = Config ;

  private:

   const Config &cfg;

   TextBuf text;

   // scroll

   ScrollPos sx;
   ScrollPos sy;

   // cursor

   bool focus = false ;
   bool cursor_on = false ;

   struct Cursor : CmpComparable<Cursor>
    {
     ulen y = 0 ;
     ulen span = 0 ;
     ulen x = 0 ;

     Cursor() {}

     Cursor(ulen y_,ulen span_,ulen x_) : y(y_),span(span_),x(x_) {}

     // cmp objects

     CmpResult objCmp(const Cursor &obj) const
      {
       return AlphaCmp(y,obj.y,span,obj.span,x,obj.x);
      }
    };

   Cursor cursor;

   bool selection_on = false ;
   Cursor selection;

   SimpleArray<Char> spanbuf;
   ulen spanlen = 0 ;

   // layout

   mutable bool ok = false ;
   mutable bool block_cache = false ;

   struct SizeData
    {
     FontSize fs;
     Coord text_dx = 0 ;
     Coord space_dx = 0 ;

     void prepare(const Font &font);

     void update(const Font &font,BookLab::TextLine &line);

     void update(const Font &font,BookLab::TextLine &line,ulen spanind,PtrLen<const Char> curspan);

     void update(BookLab::TextLine &line);
    };

   mutable SizeData data;

  private:

   static Coord Cache(const Font &font,BookLab::Span &span);

   static Coord Cache(const Font &font,PtrLen<const Char> curspan);

   static Coord Cache(const Font &font,BookLab::TextLine &line,Coord space_dx);

   static Coord Cache(const Font &font,BookLab::TextLine &line,Coord space_dx,ulen spanind,PtrLen<const Char> curspan);

   static Coord Cache(BookLab::TextLine &line,Coord space_dx);

  private:

   void addSXPos(ulen delta);

   void subSXPos(ulen delta);

   void addSYPos(ulen delta);

   void subSYPos(ulen delta);

  private:

   void clean();

   [[nodiscard]] bool cache() const;

   static bool HasSpec(BookLab::Span &span);

   static bool Alert(BookLab::Span &span);

  private:

   void posSX(ulen pos);

   void posSY(ulen pos);

   SignalConnector<TextWindow,ulen> connector_posX;
   SignalConnector<TextWindow,ulen> connector_posY;

   void updated(unsigned flags);

   SignalConnector<TextWindow,unsigned> connector_updated;

  private:

   unsigned tick_count = 0 ;

   void tick();

   void tickStart();

   void tickStop();

   DeferInput<TextWindow> input;

   DeferTick defer_tick;

  private:

   PtrLen<const Char> getCurSpan() const { return Range(spanbuf.getPtr(),spanlen); }

   template <class Func>
   bool applyToSpan(Func func);

   template <class Func>
   bool applyToSpan(Func func) const;

   void fill(StrLen str);

   ulen extend(StrLen str);

   void insert(StrLen str);

   void cleanNames();

   void fill();

  private:

   void setSXPos(ulen x);

   void setSYPos(ulen y);

   void setSXYPos(ulen x,ulen y);

   ulen getSpanCount() const;

   struct Split;

   void changeSpan(ulen span);

   void showCursor();

   void keySelect(bool on);

   void moveLeft(ulen delta);

   bool moveRight(ulen delta);

   void moveHome();

   void moveEnd();

   void moveTab();

   ulen getPosX() const;

   void flushDX();

   void setPos(ulen x,ulen y);

   void moveUp(ulen delta);

   void moveDown(ulen delta);

   void moveTop();

   void moveBottom();

  private:

   bool drag = false ;
   Point drag_base;
   ulen posx_base = 0 ;
   ulen posy_base = 0 ;

   bool mouse_pos = false ;

   void startDrag(Point point);

   void dragTo(Point point);

   void endDrag();

   void endDrag(Point point);

   template <UIntType UInt>
   static UInt AddMin(UInt a,UInt b,UInt cap) { if( a<cap ) return a+Min_cast(b,cap-a); return cap; }

   static Coord Div(Coord a,Coord b);

   static ulen DragPos(ulen pos,Coord from,Coord to,ulen cap);

   void startPosWindow(Point point);

   void posWindow(Point point);

   Cursor toCursor(Point point);

   void posCursor(Cursor cur);

   void startPosCursor(Point point);

   void posCursor(Point point);

  private:

   void makeNonEmpty();

   Coord updateCache(BookLab::TextLine &line);

   void updateData();

   void updateData(BookLab::TextLine &line);

   void insSpanChar(BookLab::TextLine &line,Char ch);

   void insChar(Char ch);

   void delSpanChar(BookLab::TextLine &line);

   void joinLine();

   void delEmptyLine(bool prev);

   void joinSpan(BookLab::TextLine &line,bool prev);

   void delChar(bool prev);

   void splitSpan();

   void splitLine();

   class Draw;

  private:

   static StrLen Part(StrLen str,ulen from,ulen to);

   static void Del(String &str,ulen from,ulen to);

   static void Del(String &str,ulen from);

   static void Del(const Font &font,BookLab::Span &span,ulen from,ulen to);

   static void Del(const Font &font,BookLab::Span &span,ulen from);

   static void Del(const Font &font,Coord space_dx,BookLab::TextLine &line,ulen from,ulen from_x,ulen to,ulen to_x);

   static void Del(const Font &font,Coord space_dx,BookLab::TextLine &line,ulen from,ulen from_x);

   void delSel();

   void delSelection();

   void copy();

   void past(BookLab::TextLine &line,PastData &data);

   void pastEnd();

   void past(PastData &data);

  public:

   TextWindow(SubWindowHost &host,const Config &cfg);

   virtual ~TextWindow();

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

   // methods

   Point getMinSize(Point cap) const;

   void blank();

   void load(DynArray<BookLab::TextLine> *pad);

   void flush();

   void setFormat(String name);

   void setLink(String name);

   void link();

   void past();

   void pastFixed();

   void pastCPP();

   // drawing

   virtual void layout();

   virtual void draw(DrawBuf buf,DrawParam draw_param) const;

   // base

   virtual void open();

   virtual void close();

   // keyboard

   virtual void gainFocus();

   virtual void looseFocus();

   // mouse

   virtual void looseCapture();

   virtual MouseShape getMouseShape(Point point,KeyMod kmod) const;

   // user input

   virtual void react(UserAction action);

   void react_Key(VKey vkey,KeyMod kmod,unsigned repeat);

   void react_Char(Char ch);

   void react_LeftClick(Point point,MouseKey mkey);

   void react_LeftUp(Point point,MouseKey);

   void react_Move(Point point,MouseKey mkey);

   void react_Leave();

   void react_Wheel(Point point,MouseKey mkey,Coord delta);

   // signals

   Signal<> changed;

   Signal<ulen> scroll_x;
   Signal<ulen> scroll_y;

   Signal<String,bool> showFormat;
   Signal<String,bool> showLink;
 };

/* class ScrollTextWindow */

class ScrollTextWindow : public ScrollableWindow<TextWindow>
 {
   void changed();

   SignalConnector<ScrollTextWindow> connector_changed;

  public:

   ScrollTextWindow(SubWindowHost &host,const ConfigType &cfg);

   virtual ~ScrollTextWindow();

   // methods

   void blank();

   void load(DynArray<BookLab::TextLine> *pad);

   void setFormat(String name) { window.setFormat(name); }

   void setLink(String name) { window.setLink(name); }

   void flush() { window.flush(); }

   void link() { window.link(); }

   void past() { window.past(); }

   void pastFixed() { window.pastFixed(); }

   void pastCPP() { window.pastCPP(); }

   // signals

   Signal<String,bool> &showFormat;
   Signal<String,bool> &showLink;

   Signal<> modified;
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

   ButtonWindow btn_B;
   LineEditWindow edit_B;

   ButtonWindow btn_U;
   LineEditWindow edit_U;

   ButtonWindow btn_I;
   LineEditWindow edit_I;


   ButtonWindow btn_Q;
   LineEditWindow edit_Q;

   ButtonWindow btn_E;
   LineEditWindow edit_E;

   ButtonWindow btn_D;
   LineEditWindow edit_D;


   ButtonWindow btn_past;
   ButtonWindow btn_past_fixed;
   ButtonWindow btn_past_cpp;


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

   void show_format(String name,bool alert);

   void show_link(String name,bool alert);

   SignalConnector<TextEditor,String,bool> connector_show_format;
   SignalConnector<TextEditor,String,bool> connector_show_link;

   void setFormat(String name);

   void setB();
   void setU();
   void setI();
   void setQ();
   void setE();
   void setD();

   SignalConnector<TextEditor> connector_B_pressed;
   SignalConnector<TextEditor> connector_U_pressed;
   SignalConnector<TextEditor> connector_I_pressed;

   SignalConnector<TextEditor> connector_Q_pressed;
   SignalConnector<TextEditor> connector_E_pressed;
   SignalConnector<TextEditor> connector_D_pressed;

   SignalConnector<ScrollTextWindow> connector_past_pressed;
   SignalConnector<ScrollTextWindow> connector_past_fixed_pressed;
   SignalConnector<ScrollTextWindow> connector_past_cpp_pressed;

  public:

   TextEditor(SubWindowHost &host,const Config &cfg);

   virtual ~TextEditor();

   // methods

   Point getMinSize() const;

   void blank() { edit_text.blank(); }

   void load(DynArray<BookLab::TextLine> *pad);

   void flush() { edit_text.flush(); }

   void link() { edit_text.link(); }

   // base

   virtual void open();

   // drawing

   virtual void layout();

   virtual void drawBack(DrawBuf buf,DrawParam &draw_param) const;

   // user input

   virtual void react(UserAction action);

   void react_Key(VKey vkey,KeyMod kmod,unsigned repeat);

   // signals

   Signal<> &modified;
 };

} // namespace App

#endif


