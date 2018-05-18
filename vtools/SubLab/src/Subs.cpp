/* Subs.cpp */
//----------------------------------------------------------------------------------------
//
//  Project: SubLab 1.00
//
//  License: Boost Software License - Version 1.0 - August 17th, 2003
//
//            see http://www.boost.org/LICENSE_1_0.txt or the local copy
//
//  Copyright (c) 2016 Sergey Strukov. All rights reserved.
//
//----------------------------------------------------------------------------------------

#include <inc/Subs.h>

#include <CCore/inc/video/FigureLib.h>
#include <CCore/inc/video/Layout.h>

namespace App {
namespace Subs {

/* class DrawShape */

void DrawShape::draw(const DrawBuf &buf) const
 {
  MPane p(pane);

  if( !p ) return;

  SmoothDrawArt art(buf.cut(pane));

  FigureDownArrow fig1(p);

  fig1.curveSolid(art,+cfg.body);

  auto fig2=fig1.border(+cfg.width);

  fig2.curveSolid(art,+cfg.border);
 }

/* class AltShape */

Point AltShape::getMinSize() const
 {
  Coord dy=+cfg.dy;

  return Point(2*dy,dy);
 }

auto AltShape::getZone(Point point) const -> CheckType
 {
  return point.x-pane.x > pane.dx/2 ;
 }

void AltShape::draw(const DrawBuf &buf) const
 {
  MPane p(pane);

  if( !p ) return;

  MCoord t=p.x+p.dx/2;
  MCoord space=p.dy/5;

  MPane a=p.cutLeft(t);
  MPane b=p.cutRight(t);

  SmoothDrawArt art(buf.cut(pane));

  VColor snow=+cfg.snow;
  VColor gray=+cfg.gray;
  VColor snowUp=+cfg.snowUp;

  // body

  {
   FigureBox fig(a);

   if( enable && check )
     {
      VColor top_ = ( mover && !zone )? snowUp : snow ;

      fig.solid(art,TwoField(a.getTopLeft(),top_,a.getBottomLeft(),gray));
     }
   else
     {
      fig.solid(art,gray);
     }
  }
  {
   FigureBox fig(b);

   if( enable && !check )
     {
      VColor top_ = ( mover && zone )? snowUp : snow ;

      fig.solid(art,TwoField(b.getTopLeft(),top_,b.getTopRight(),gray));
     }
   else
     {
      fig.solid(art,gray);
     }
  }

  // mark

  {
   FigureDownArrow fig(a.shrink(space));

   VColor mark = ( enable && !check )? +cfg.mark_false_on : +cfg.mark_false ;

   fig.curveSolid(art,mark);
  }
  {
   FigureRightArrow fig(b.shrink(space));

   VColor mark = ( enable && check )? +cfg.mark_true_on : +cfg.mark_true ;

   fig.curveSolid(art,mark);
  }

  // border

  {
   FigureBox fig(p);

   MCoord width=space/2;

   VColor border = enable? +cfg.border : snow ;

   fig.loop(art,HalfPos,width,border);

   art.path(width,border,p.getTopMid(),p.getBottomMid());

   if( focus )
     fig.loop(art,HalfPos,width/2,+cfg.focus);
  }
 }

/* class TextContourWindow_Left */

TextContourWindow_Left::TextContourWindow_Left(SubWindowHost &host,const ConfigType &cfg)
 : TextContourWindow(host,cfg,"Title left"_def,AlignX_Left)
 {
 }

/* class TextContourWindow_Right */

TextContourWindow_Right::TextContourWindow_Right(SubWindowHost &host,const ConfigType &cfg)
 : TextContourWindow(host,cfg,"Title right"_def,AlignX_Right)
 {
 }

/* class TextContourWindow_Center */

TextContourWindow_Center::TextContourWindow_Center(SubWindowHost &host,const ConfigType &cfg)
 : TextContourWindow(host,cfg,"Title center"_def,AlignX_Center)
 {
 }

/* class ButtonWindow_Button */

void ButtonWindow_Button::testException()
 {
  ExceptionFrame frame(exbuf);

  Printf(Exception,"Button pressed");
 }

ButtonWindow_Button::ButtonWindow_Button(SubWindowHost &host,const UserPreference &pref)
 : ButtonWindow(host,pref.getSmartConfig(),"Button"_def),
   exbuf(getFrame(),pref.getSmartConfig()),

   connector_pressed(this,&ButtonWindow_Button::testException,pressed)
 {
 }

/* class KnobWindow_Asterisk */

void KnobWindow_Asterisk::tick()
 {
  if( tick_count )
    {
     tick_count--;

     unsigned period=5_sectick;

     if( (tick_count%period)==0 )
       {
        Printf(NoException,"Tick");
        Printf(Exception,"Tick exception\n>>>>>>>>>>>>>>> #; >>>>>>>>>>>>>>>>>>>>>>>>>>",count++);
       }
    }
  else
    {
     defer_tick.stop();
    }
 }

void KnobWindow_Asterisk::testException()
 {
  if( tick_count==0 )
    {
     tick_count=60_sectick;

     defer_tick.start();
    }

  Printf(Exception,"Test exception #;",count++);
 }

KnobWindow_Asterisk::KnobWindow_Asterisk(SubWindowHost &host,const ConfigType &cfg)
 : KnobWindow(host,cfg,KnobShape::FaceAsterisk),
   input(this),

   connector_pressed(this,&KnobWindow_Asterisk::testException,pressed)
 {
  defer_tick=input.create(&KnobWindow_Asterisk::tick);
 }

/* class KnobWindow_auto */

KnobShape::FaceType KnobWindow_auto::NextFace(KnobShape::FaceType face)
 {
  auto ret=KnobShape::FaceType(face+1);

  if( ret==KnobShape::FaceLim ) return KnobShape::FaceOk;

  return ret;
 }

void KnobWindow_auto::nextFace()
 {
  setFace(NextFace(getFace()));
 }

KnobWindow_auto::KnobWindow_auto(SubWindowHost &host,const ConfigType &cfg)
 : KnobWindow(host,cfg,KnobShape::FaceOk),

   connector_pressed(this,&KnobWindow_auto::nextFace,pressed)
 {
 }

/* class LabelWindow_Label */

LabelWindow_Label::LabelWindow_Label(SubWindowHost &host,const ConfigType &cfg)
 : LabelWindow(host,cfg,"Label"_def,AlignX_Center,AlignY_Center)
 {
 }

/* class TextWindow_SampleText */

TextWindow_SampleText::TextWindow_SampleText(SubWindowHost &host,const ConfigType &cfg)
 : TextWindow(host,cfg,"Sample text line"_def,AlignX_Center,AlignY_Center)
 {
 }

/* class TextLineWindow_SampleText */

TextLineWindow_SampleText::TextLineWindow_SampleText(SubWindowHost &host,const ConfigType &cfg)
 : TextLineWindow(host,cfg,"Sample text long line 1234567890"_def)
 {
 }

/* class ProgressWindow_Sample */

void ProgressWindow_Sample::tick()
 {
  if( !count )
    {
     count=2_sectick;

     if( pos<=getTotal() )
       setPosPing(pos++);
     else
       defer_tick.stop();
    }

  count--;
 }

ProgressWindow_Sample::ProgressWindow_Sample(SubWindowHost &host,const ConfigType &cfg)
 : ProgressWindow(host,cfg),
   input(this)
 {
  defer_tick=input.create(&ProgressWindow_Sample::tick);

  setTotal(100);
 }

 // base

void ProgressWindow_Sample::open()
 {
  defer_tick.start();
 }

void ProgressWindow_Sample::close()
 {
  defer_tick.stop();
 }

/* class ArrowProgressWindow_Sample */

void ArrowProgressWindow_Sample::tick()
 {
  if( !count )
    {
     count=2_sectick;

     if( pos<=getTotal() )
       setPosPing(pos++);
     else
       defer_tick.stop();
    }

  count--;
 }

ArrowProgressWindow_Sample::ArrowProgressWindow_Sample(SubWindowHost &host,const ConfigType &cfg)
 : ArrowProgressWindow(host,cfg),
   input(this)
 {
  defer_tick=input.create(&ArrowProgressWindow_Sample::tick);

  setTotal(100);
 }

 // base

void ArrowProgressWindow_Sample::open()
 {
  defer_tick.start();
 }

void ArrowProgressWindow_Sample::close()
 {
  defer_tick.stop();
 }

/* class InfoWindow_SampleInfo */

DefString InfoWindow_SampleInfo::Sample()
 {
  return
  "type AtomIndex = uint32 ;\r\n"
  "type SyntIndex = uint32 ;\r\n"
  "type KindIndex = uint32 ;\r\n"
  "type ElementIndex = uint32 ;\r\n"
  "type RuleIndex = uint32 ;\r\n"
  "type StateIndex = uint32 ;\r\n"
  "type FinalIndex = uint32 ;\r\n"
  "\r\n"
  "struct Lang\r\n"
  " {\r\n"
  "  Atom[] atoms;\r\n"
  "  Synt[] synts;\r\n"
  "  Synt * [] lang;\r\n"
  "  Element[] elements;\r\n"
  "  Rule[] rules;\r\n"
  "  TopRule[] top_rules;\r\n"
  "  State[] states;\r\n"
  "  Final[] finals;\r\n"
  " };\r\n"
  "\r\n"
  "struct Atom\r\n"
  " {\r\n"
  "  AtomIndex index;\r\n"
  "  text name;\r\n"
  "  \r\n"
  "  Element *element;\r\n"
  " };\r\n"
  "\r\n"
  "struct Synt\r\n"
  " {\r\n"
  "  SyntIndex index;\r\n"
  "  text name;\r\n"
  "  \r\n"
  "  Kind[] kinds;\r\n"
  "  Rule * [] rules;\r\n"
  " };\r\n"
  "\r\n"
  "struct Kind\r\n"
  " {\r\n"
  "  KindIndex kindex; // index among all kinds\r\n"
  "  KindIndex index; // index in synt array\r\n"
  "  text name;\r\n"
  "\r\n"
  "  Synt *synt;\r\n"
  "  \r\n"
  "  Element *element;\r\n"
  "  \r\n"
  "  TopRule * [] rules;\r\n"
  " };\r\n"
  "\r\n"
  "struct Element\r\n"
  " {\r\n"
  "  ElementIndex index;\r\n"
  "  \r\n"
  "  {Atom,Kind} * elem;\r\n"
  " };\r\n"
  "\r\n"
  "struct Rule\r\n"
  " {\r\n"
  "  RuleIndex index;\r\n"
  "  text name;\r\n"
  "\r\n"
  "  Kind *result;\r\n"
  "\r\n"
  "  type Arg = {Atom,Synt} * ;\r\n"
  "\r\n"
  "  Arg[] args;\r\n"
  " };\r\n"
  "\r\n"_def;
 }

InfoWindow_SampleInfo::InfoWindow_SampleInfo(SubWindowHost &host,const ConfigType &cfg)
 : InfoWindow(host,cfg,InfoFromString(Sample()))
 {
 }

/* class MessageWindow_knob */

MessageWindow_knob::MessageWindow_knob(SubWindowHost &host,const ConfigType &cfg)
 : MessageWindow(host,cfg)
 {
  setInfo("Knob message window"_def);
 }

/* class MessageWindow_ok */

MessageWindow_ok::MessageWindow_ok(SubWindowHost &host,const ConfigType &cfg)
 : MessageWindow(host,cfg)
 {
  add("Ok"_def,Button_Ok).setInfo("Ok message window"_def);
 }

/* class MessageWindow_yes_no */

MessageWindow_yes_no::MessageWindow_yes_no(SubWindowHost &host,const ConfigType &cfg)
 : MessageWindow(host,cfg)
 {
  add("Yes"_def,Button_Yes).add("No"_def,Button_No).setInfo("Yes/No message window"_def);
 }

/* class SimpleTextListWindow_SampleList */

DefString SimpleTextListWindow_SampleList::List()
 {
  return
  "XSingleLine\r\n"
  "YSingleLine\r\n"
  "XDoubleLine\r\n"
  "YDoubleLine\r\n"
  "Contour\r\n"
  "TextContour left\r\n"
  "TextContour right\r\n"
  "TextContour center\r\n"_def;
 }

SimpleTextListWindow_SampleList::SimpleTextListWindow_SampleList(SubWindowHost &host,const ConfigType &cfg)
 : SimpleTextListWindow(host,cfg,InfoFromString(List()))
 {
 }

/* class XScrollWindow_Sample */

XScrollWindow_Sample::XScrollWindow_Sample(SubWindowHost &host,const ConfigType &cfg)
 : XScrollWindow(host,cfg)
 {
  setRange(1000,10);
 }

/* class YScrollWindow_Sample */

YScrollWindow_Sample::YScrollWindow_Sample(SubWindowHost &host,const ConfigType &cfg)
 : YScrollWindow(host,cfg)
 {
  setRange(1000,10);
 }

/* class SpinorWindow_Sample */

SpinorWindow_Sample::SpinorWindow_Sample(SubWindowHost &host,const ConfigType &cfg)
 : SpinorWindow(host,cfg)
 {
  setRange(-100,100);

  setOptions("+4i");
 }


/* class LayoutWindow */

LayoutWindow::LayoutWindow(SubWindowHost &host,const UserPreference &)
 : SubWindow(host)
 {
 }

 // drawing

void LayoutWindow::layout()
 {
  outer=getPane().shrink(10);

  PlaceColumn place(outer,{30,20},10,3);

  red=*place; ++place;
  green=*place; ++place;
  blue=*place;
 }

void LayoutWindow::draw(DrawBuf buf,bool) const
 {
  Coord width=Fraction(6,4);

  SmoothDrawArt art(buf);

  FigureBox fig(outer);

  fig.loop(art,HalfPos,width,Black);

  art.block(red,Red);
  art.block(green,Green);
  art.block(blue,Blue);
 }

} // namespace Subs
} // namespace App



