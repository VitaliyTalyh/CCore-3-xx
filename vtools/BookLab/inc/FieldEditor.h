/* FieldEditor.h */
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

#ifndef FieldEditor_h
#define FieldEditor_h

#include <inc/BookLab.h>

namespace App {

/* classes */

struct FieldControl;

class FieldBool;

class CoordWindow;

class ULenWindow;

class FieldCoord;

class FieldString;

class FieldULen;

class FieldColor;

class FieldStrength;

class FieldAlign;

class FieldEffect;

class FieldPoint;

class FieldRatio;


class FieldWindow;

class FieldFrame;

/* struct FieldControl */

struct FieldControl
 {
  virtual void set(bool *def_pad,bool def) = 0 ;

  virtual void noField() = 0 ;
 };

/* class FieldBool */

class FieldBool : public ComboWindow , public FieldControl
 {
  public:

   struct Config
    {
     // user

     RefVal<Coord> space_dxy = 10 ;

     CtorRefVal<CheckWindow::ConfigType> check_cfg;
     CtorRefVal<LabelWindow::ConfigType> lab_cfg;

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
       space_dxy.bind(bag.space_dxy);

       check_cfg.bind(proxy);
       lab_cfg.bind(proxy);
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

   bool * pad = 0 ;

   // subs

   CheckWindow check_true;
   LabelWindow lab_true;

  public:

   FieldBool(SubWindowHost &host,const Config &cfg);

   virtual ~FieldBool();

   // methods

   Point getMinSize() const;

   void setField(bool *pad);

   bool getValue() const { return check_true.isChecked(); }

   void setValue(bool val) { check_true.check(val); }

   virtual void set(bool *def_pad,bool def);

   virtual void noField();

   // drawing

   virtual void layout();
 };

/* class CoordWindow */

class CoordWindow : public LineEditWindow
 {
  private:

   static bool CheckText(PtrLen<const Char> text);

   static Coord TextToValue(PtrLen<const Char> text);

   void edit_changed();

   SignalConnector<CoordWindow> connector_edit_changed;

  public:

   CoordWindow(SubWindowHost &host,const ConfigType &cfg);

   virtual ~CoordWindow();

   // methods

   Coord getValue() const;

   void setValue(Coord val);
 };

/* class ULenWindow */

class ULenWindow : public LineEditWindow
 {
  private:

   static bool CheckText(PtrLen<const Char> text);

   static ulen TextToValue(PtrLen<const Char> text);

   void edit_changed();

   SignalConnector<ULenWindow> connector_edit_changed;

  public:

   ULenWindow(SubWindowHost &host,const ConfigType &cfg);

   virtual ~ULenWindow();

   // methods

   ulen getValue() const;

   void setValue(ulen val);
 };

/* class FieldCoord */

class FieldCoord : public ComboWindow , public FieldControl
 {
  public:

   struct Config
    {
     // user

     CtorRefVal<LineEditWindow::ConfigType> edit_cfg;

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
       Used(bag);

       edit_cfg.bind(proxy);
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

   Coord * pad = 0 ;

   // subs

   CoordWindow edit;

  public:

   FieldCoord(SubWindowHost &host,const Config &cfg);

   virtual ~FieldCoord();

   // methods

   Point getMinSize() const;

   void setField(Coord *pad);

   Coord getValue() const { return edit.getValue(); }

   void setValue(Coord val) { edit.setValue(val); }

   virtual void set(bool *def_pad,bool def);

   virtual void noField();

   // drawing

   virtual void layout();
 };

/* class FieldString */

class FieldString : public ComboWindow , public FieldControl
 {
  public:

   struct Config
    {
     // user

     CtorRefVal<LineEditWindow::ConfigType> edit_cfg;

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
       Used(bag);

       edit_cfg.bind(proxy);
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

   String * pad = 0 ;

   // subs

   LineEditWindow edit;

  public:

   FieldString(SubWindowHost &host,const Config &cfg);

   virtual ~FieldString();

   // methods

   Point getMinSize() const;

   void setField(String *pad);

   String getValue() const { return edit.getString(); }

   void setValue(String val) { edit.setText(Range(val)); }

   virtual void set(bool *def_pad,bool def);

   virtual void noField();

   // drawing

   virtual void layout();
 };

/* class FieldULen */

class FieldULen : public ComboWindow , public FieldControl
 {
  public:

   struct Config
    {
     // user

     CtorRefVal<LineEditWindow::ConfigType> edit_cfg;

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
       Used(bag);

       edit_cfg.bind(proxy);
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

   ulen * pad = 0 ;

   // subs

   ULenWindow edit;

  public:

   FieldULen(SubWindowHost &host,const Config &cfg);

   virtual ~FieldULen();

   // methods

   Point getMinSize() const;

   void setField(ulen *pad);

   ulen getValue() const { return edit.getValue(); }

   void setValue(ulen val) { edit.setValue(val); }

   virtual void set(bool *def_pad,bool def);

   virtual void noField();

   // drawing

   virtual void layout();
 };

/* class FieldColor */

class FieldColor : public ComboWindow , public FieldControl
 {
  public:

   struct Config
    {
     // user

     CtorRefVal<ColorEditWindow::ConfigType> edit_cfg;

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
       Used(bag);

       edit_cfg.bind(proxy);
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

   VColor * pad = 0 ;

   // subs

   ColorEditWindow edit;

  public:

   FieldColor(SubWindowHost &host,const Config &cfg);

   virtual ~FieldColor();

   // methods

   Point getMinSize() const;

   void setField(VColor *pad);

   VColor getValue() const { return edit.getColor(); }

   void setValue(VColor val) { edit.setColor(val); }

   virtual void set(bool *def_pad,bool def);

   virtual void noField();

   // drawing

   virtual void layout();
 };

/* class FieldStrength */

class FieldStrength : public ComboWindow , public FieldControl
 {
  public:

   struct Config
    {
     // user

     CtorRefVal<LineEditWindow::ConfigType> edit_cfg;

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
       Used(bag);

       edit_cfg.bind(proxy);
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

   BookLab::Strength * pad = 0 ;

   // subs

   CoordWindow edit;

  public:

   FieldStrength(SubWindowHost &host,const Config &cfg);

   virtual ~FieldStrength();

   // methods

   Point getMinSize() const;

   void setField(BookLab::Strength *pad);

   BookLab::Strength getValue() const { return BookLab::Strength(edit.getValue()); }

   void setValue(BookLab::Strength val) { edit.setValue(val); }

   virtual void set(bool *def_pad,bool def);

   virtual void noField();

   // drawing

   virtual void layout();
 };

/* class FieldAlign */

class FieldAlign : public ComboWindow , public FieldControl
 {
  public:

   struct Config
    {
     // user

     RefVal<Coord> space_dxy = 10 ;

     CtorRefVal<LabelWindow::ConfigType> lab_cfg;
     CtorRefVal<RadioWindow::ConfigType> rad_cfg;

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
       space_dxy.bind(bag.space_dxy);

       lab_cfg.bind(proxy);
       rad_cfg.bind(proxy);
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

   BookLab::Align * pad = 0 ;

   // subs

   LabelWindow lab_left;
   LabelWindow lab_right;
   LabelWindow lab_center;

   RadioGroup group;

   RadioWindow rad_left;
   RadioWindow rad_right;
   RadioWindow rad_center;

  public:

   FieldAlign(SubWindowHost &host,const Config &cfg);

   virtual ~FieldAlign();

   // methods

   Point getMinSize() const;

   void setField(BookLab::Align *pad);

   BookLab::Align getValue() const;

   void setValue(BookLab::Align val);

   virtual void set(bool *def_pad,bool def);

   virtual void noField();

   // drawing

   virtual void layout();
 };

/* class FieldEffect */

class FieldEffect : public ComboWindow , public FieldControl
 {
  public:

   struct Config
    {
     // user

     RefVal<Coord> space_dxy = 10 ;

     CtorRefVal<LabelWindow::ConfigType> lab_cfg;
     CtorRefVal<RadioWindow::ConfigType> rad_cfg;

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
       space_dxy.bind(bag.space_dxy);

       lab_cfg.bind(proxy);
       rad_cfg.bind(proxy);
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

   BookLab::Effect * pad = 0 ;

   // subs

   LabelWindow lab_none;
   LabelWindow lab_under;
   LabelWindow lab_strike;

   RadioGroup group;

   RadioWindow rad_none;
   RadioWindow rad_under;
   RadioWindow rad_strike;

  public:

   FieldEffect(SubWindowHost &host,const Config &cfg);

   virtual ~FieldEffect();

   // methods

   Point getMinSize() const;

   void setField(BookLab::Effect *pad);

   BookLab::Effect getValue() const;

   void setValue(BookLab::Effect val);

   virtual void set(bool *def_pad,bool def);

   virtual void noField();

   // drawing

   virtual void layout();
 };

/* class FieldPoint */

class FieldPoint : public ComboWindow , public FieldControl
 {
  public:

   struct Config
    {
     // user

     RefVal<Coord> space_dxy = 10 ;

     CtorRefVal<LabelWindow::ConfigType> lab_cfg;
     CtorRefVal<LineEditWindow::ConfigType> edit_cfg;

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
       space_dxy.bind(bag.space_dxy);

       lab_cfg.bind(proxy);
       edit_cfg.bind(proxy);
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

   Point * pad = 0 ;

   // subs

   LabelWindow lab_point;
   LabelWindow lab_x;
   LabelWindow lab_y;
   CoordWindow edit_x;
   CoordWindow edit_y;

  public:

   FieldPoint(SubWindowHost &host,const Config &cfg);

   virtual ~FieldPoint();

   // methods

   Point getMinSize() const;

   void setField(Point *pad);

   Point getValue() const { return Point(edit_x.getValue(),edit_y.getValue()); }

   void setValue(Point val) { edit_x.setValue(val.x); edit_y.setValue(val.y); }

   virtual void set(bool *def_pad,bool def);

   virtual void noField();

   // drawing

   virtual void layout();
 };

/* class FieldRatio */

class FieldRatio : public ComboWindow , public FieldControl
 {
  public:

   struct Config
    {
     // user

     RefVal<Coord> space_dxy = 10 ;

     CtorRefVal<LabelWindow::ConfigType> lab_cfg;
     CtorRefVal<LineEditWindow::ConfigType> edit_cfg;

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
       space_dxy.bind(bag.space_dxy);

       lab_cfg.bind(proxy);
       edit_cfg.bind(proxy);
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

   BookLab::Ratio * pad = 0 ;

   // subs

   LabelWindow lab_ratio;
   LabelWindow lab_a;
   LabelWindow lab_b;
   CoordWindow edit_a;
   CoordWindow edit_b;

  private:

   static BookLab::Ratio Correct(Coord a,Coord b);

  public:

   FieldRatio(SubWindowHost &host,const Config &cfg);

   virtual ~FieldRatio();

   // methods

   Point getMinSize() const;

   void setField(BookLab::Ratio *pad);

   BookLab::Ratio getValue() const { return Correct(edit_a.getValue(),edit_b.getValue()); }

   void setValue(BookLab::Ratio val) { edit_a.setValue(val.a); edit_b.setValue(val.b); }

   virtual void set(bool *def_pad,bool def);

   virtual void noField();

   // drawing

   virtual void layout();
 };

/* class FieldWindow */

class FieldWindow : public ComboWindow
 {
  public:

   struct Config
    {
     // user

     RefVal<Coord> space_dxy = 10 ;

     RefVal<VColor> back = Silver ;

     CtorRefVal<ButtonWindow::ConfigType> btn_cfg;
     CtorRefVal<CheckWindow::ConfigType> check_cfg;
     CtorRefVal<LabelWindow::ConfigType> lab_cfg;

     // app

     CtorRefVal<FieldBool::ConfigType> field_bool_cfg;
     CtorRefVal<FieldCoord::ConfigType> field_Coord_cfg;
     CtorRefVal<FieldString::ConfigType> field_String_cfg;
     CtorRefVal<FieldULen::ConfigType> field_ulen_cfg;
     CtorRefVal<FieldColor::ConfigType> field_Color_cfg;
     CtorRefVal<FieldStrength::ConfigType> field_Strength_cfg;
     CtorRefVal<FieldAlign::ConfigType> field_Align_cfg;
     CtorRefVal<FieldEffect::ConfigType> field_Effect_cfg;
     CtorRefVal<FieldPoint::ConfigType> field_Point_cfg;
     CtorRefVal<FieldRatio::ConfigType> field_Ratio_cfg;

     template <class AppPref>
     Config(const UserPreference &user_pref,const AppPref &app_pref) noexcept
      : field_bool_cfg(user_pref,app_pref),
        field_Coord_cfg(user_pref,app_pref),
        field_String_cfg(user_pref,app_pref),
        field_ulen_cfg(user_pref,app_pref),
        field_Color_cfg(user_pref,app_pref),
        field_Strength_cfg(user_pref,app_pref),
        field_Align_cfg(user_pref,app_pref),
        field_Effect_cfg(user_pref,app_pref),
        field_Point_cfg(user_pref,app_pref),
        field_Ratio_cfg(user_pref,app_pref)
      {
       bindUser(user_pref.get(),user_pref.getSmartConfig());
       bindApp(app_pref.get());
      }

     template <class Bag,class Proxy>
     void bindUser(const Bag &bag,Proxy proxy)
      {
       back.bind(bag.back);
       space_dxy.bind(bag.space_dxy);

       btn_cfg.bind(proxy);
       check_cfg.bind(proxy);
       lab_cfg.bind(proxy);
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

   BookLab::Book &book;

   bool * def_pad = 0 ;
   FieldControl * field_ctrl = 0 ;
   SubWindow * field = 0 ;

   // subs

   ButtonWindow btn_set;
   CheckWindow check_def;
   LabelWindow lab_def;

   // fields

   FieldBool field_bool;
   FieldCoord field_Coord;
   FieldString field_String;
   FieldULen field_ulen;
   FieldColor field_Color;
   FieldStrength field_Strength;
   FieldAlign field_Align;
   FieldEffect field_Effect;
   FieldPoint field_Point;
   FieldRatio field_Ratio;

  private:

   void noField();

   void setFieldCtrl(FieldControl *field_ctrl,SubWindow *field,bool withdef);

   template <class W,class T>
   void setFieldCtrl(W &sub,T *pad);

   template <class W,class T>
   void setFieldCtrl(W &sub,BookLab::OptDataBase<T> *pad);


   template <class T>
   void setField(T *) { noField(); }

   void setField(bool *pad);

   void setField(BookLab::OptDataBase<bool> *pad);

   void setField(Coord *pad);

   void setField(BookLab::OptDataBase<Coord> *pad);

   void setField(String *pad);

   void setField(BookLab::OptDataBase<ulen> *pad);

   void setField(BookLab::OptDataBase<VColor> *pad);

   void setField(BookLab::OptDataBase<BookLab::Strength> *pad);

   void setField(BookLab::OptDataBase<BookLab::Align> *pad);

   void setField(BookLab::OptDataBase<BookLab::Effect> *pad);

   void setField(BookLab::OptDataBase<Point> *pad);

   void setField(BookLab::OptDataBase<BookLab::Ratio> *pad);

  private:

   void set_pressed();

   SignalConnector<FieldWindow> connector_set_pressed;

  public:

   FieldWindow(SubWindowHost &host,const Config &cfg,BookLab::Book &book);

   virtual ~FieldWindow();

   // methods

   Point getMinSize() const;

   void setField(BookLab::PadType pad);

   // drawing

   virtual void layout();

   virtual void drawBack(DrawBuf buf,bool drag_active) const;

   // signals

   Signal<> modified;
 };

/* class FieldFrame */

class FieldFrame : public DragFrame
 {
  public:

   struct Config
    {
     // user

     RefVal<Ratio> pos_ry = Div(5,12) ;

     CtorRefVal<DragFrame::ConfigType> frame_cfg;

     // app

     RefVal<DefString> title = "Edit field"_def ;

     FieldWindow::ConfigType client_cfg;

     template <class AppPref>
     Config(const UserPreference &user_pref,const AppPref &app_pref) noexcept
      : client_cfg(user_pref,app_pref)
      {
       bindUser(user_pref.get(),user_pref.getSmartConfig());
       bindApp(app_pref.get());
      }

     template <class Bag,class Proxy>
     void bindUser(const Bag &bag,Proxy proxy)
      {
       pos_ry.bind(bag.frame_pos_ry);

       frame_cfg.bind(proxy);
      }

     template <class Bag>
     void bindApp(const Bag &bag)
      {
       title.bind(bag.field_title);
      }
    };

   using ConfigType = Config ;

  private:

   const Config &cfg;

   FieldWindow client;

   Pane place;
   bool has_place = false ;

  public:

   FieldFrame(Desktop *desktop,const Config &cfg,BookLab::Book &book,Signal<> &update);

   virtual ~FieldFrame();

   // methods

   void setField(BookLab::PadType pad) { client.setField(pad); }

   // base

   virtual void dying();

   // create

   Pane getPane(StrLen title) const;

   void create(FrameWindow *parent)
    {
     DefString title=+cfg.title;

     DragFrame::create(parent,getPane(title.str()),title);
    }

   // signals

   Signal<> &modified;
 };

} // namespace App

#endif

