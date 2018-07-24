" \n"
" \n"
" \n"
" \n"
" \n"
" \n"
" \n"
" \n"
" \n"
" \n"
" \n"
" \n"
"\n"
" \n"
"\n"
"type Bool = uint8 ;\n"
"\n"
"Bool True = 1 ;\n"
"\n"
"Bool False = 0 ;\n"
"\n"
"type VColor = uint32 ;\n"
"\n"
"type Coord = sint32 ;\n"
"\n"
"type Effect = uint8 ;\n"
"\n"
"type Align = uint8 ;\n"
"\n"
"struct Point\n"
" {\n"
"  Coord x;\n"
"  Coord y;\n"
" };\n"
" \n"
"struct Ratio\n"
" {\n"
"  Coord a;\n"
"  Coord b;\n"
" }; \n"
"\n"
" \n"
"\n"
"struct OptColor\n"
" {\n"
"  Bool def;\n"
"  VColor data;\n"
" };\n"
" \n"
"struct OptPoint\n"
" {\n"
"  Bool def;\n"
"  Point data;\n"
" };\n"
" \n"
"struct OptCoord\n"
" {\n"
"  Bool def;\n"
"  Coord data;\n"
" };  \n"
" \n"
"struct OptRatio\n"
" {\n"
"  Bool def;\n"
"  Ratio data;\n"
" }; \n"
" \n"
"struct OptEffect\n"
" {\n"
"  Bool def;\n"
"  Effect data;\n"
" };\n"
" \n"
"struct OptAlign\n"
" {\n"
"  Bool def;\n"
"  Align data;\n"
" };  \n"
" \n"
"struct OptBool\n"
" {\n"
"  Bool def;\n"
"  Bool data;\n"
" };\n"
"  \n"
"struct OptInt\n"
" {\n"
"  Bool def;\n"
"  int data;\n"
" };\n"
" \n"
"struct OptULen\n"
" {\n"
"  Bool def;\n"
"  ulen data;\n"
" }; \n"
" \n"
" \n"
" \n"
"struct PagePtr\n"
" {\n"
"  text name;\n"
"  Page *ptr;\n"
" }; \n"
" \n"
"struct FontPtr\n"
" {\n"
"  text name;\n"
"  Font *ptr;\n"
" };\n"
" \n"
"struct LinePtr\n"
" {\n"
"  text name;\n"
"  {SingleLine,DoubleLine} *ptr;\n"
" };  \n"
" \n"
"struct BodyPtr\n"
" {\n"
"  text name;\n"
"  {Bitmap,Collapse,TextList,Table,Text,FixedText} *ptr;\n"
" }; \n"
" \n"
"struct FormatPtr\n"
" {\n"
"  text name;\n"
"  Format *ptr;\n"
" };\n"
" \n"
"struct BorderPtr\n"
" {\n"
"  text name;\n"
"  Border *ptr;\n"
" };\n"
" \n"
"struct CellPtr\n"
" {\n"
"  text name;\n"
"  Cell *ptr;\n"
" };\n"
" \n"
"struct RefPtr\n"
" {\n"
"  text name;\n"
"  {Link,Page} *ptr;\n"
" };\n"
" \n"
"struct PlacementPtr\n"
" {\n"
"  text name;\n"
"  {OneLine,MultiLine} *ptr;\n"
" };     \n"
" \n"
" \n"
" \n"
"struct Defaults\n"
" {\n"
"  OptPoint inner;\n"
"  OptPoint outer;\n"
"  OptCoord bulletSpace;\n"
"  OptCoord itemSpace;\n"
"\n"
"  SingleLine *singleLine;\n"
"  DoubleLine *doubleLine;\n"
"  Format *collapseFormat;\n"
"  Format *bulletFormat;\n"
"  Border *border;\n"
"  Format *textFormat;\n"
"  Format *fixedFormat;\n"
"  {OneLine,MultiLine} *placement;\n"
" }; \n"
"\n"
"type Element = {Font,Format,SingleLine,DoubleLine,Page,Scope,Section,Bitmap,Collapse,TextList,\n"
"                Border,Cell,Table,Link,FixedText,OneLine,MultiLine,Text} * ;\n"
"\n"
"struct Doc\n"
" {\n"
"  text title;\n"
"  OptColor back;\n"
"  OptColor fore;\n"
"  PagePtr start;\n"
"  Defaults defs;\n"
"  \n"
"  Element[] list;\n"
" };\n"
"\n"
" \n"
"\n"
"struct Font\n"
" {\n"
"  text name;\n"
"  Bool open;\n"
"  \n"
"  text face;\n"
"  Coord size;\n"
"  OptBool bold;\n"
"  OptBool italic;\n"
"  OptInt strength;\n"
" };\n"
"\n"
"struct Format\n"
" {\n"
"  text name;\n"
"  Bool open;\n"
"  \n"
"  FontPtr font;\n"
"  OptColor back;\n"
"  OptColor fore;\n"
"  OptEffect effect;  \n"
" };\n"
"\n"
"struct SingleLine\n"
" {\n"
"  text name;\n"
"  Bool open;\n"
"  \n"
"  OptRatio width;\n"
"  OptColor line;\n"
" };\n"
"\n"
"struct DoubleLine\n"
" {\n"
"  text name;\n"
"  Bool open;\n"
"  \n"
"  OptRatio width;\n"
"  OptColor gray;\n"
"  OptColor snow;\n"
" };\n"
"\n"
"struct Frame\n"
" {\n"
"  OptPoint inner;\n"
"  OptPoint outer;\n"
"  OptColor col;\n"
"  \n"
"  LinePtr line;\n"
"  BodyPtr body;\n"
" };\n"
"\n"
"struct FrameList\n"
" {\n"
"  Frame[] list;\n"
"  ulen cur;\n"
" };\n"
"\n"
"struct Page\n"
" {\n"
"  text name;\n"
"  Bool open;\n"
"  \n"
"  text title;\n"
"  OptColor back;\n"
"  OptColor fore;\n"
"  \n"
"  PagePtr up;\n"
"  PagePtr prev;\n"
"  PagePtr next;\n"
"  \n"
"  FrameList list;\n"
" };\n"
"\n"
"struct Scope\n"
" {\n"
"  text name;\n"
"  Bool open;\n"
"  \n"
"  Defaults defs;\n"
"  \n"
"  Element[] list;\n"
" };\n"
"\n"
"struct Section\n"
" {\n"
"  Bool open;\n"
"  \n"
"  text comment;\n"
"  \n"
"  Element[] list;\n"
" };\n"
"\n"
"struct Bitmap\n"
" {\n"
"  text name;\n"
"  \n"
"  text file_name;\n"
" };\n"
"\n"
"struct Collapse\n"
" {\n"
"  text name;\n"
"  Bool open;\n"
"  \n"
"  text title;\n"
"  FormatPtr format;\n"
"  Bool openlist;\n"
"  OptBool hide;\n"
"  \n"
"  FrameList list;\n"
" };\n"
"\n"
"struct Item\n"
" {\n"
"  text bullet;\n"
"  \n"
"  FrameList list;\n"
" };\n"
"\n"
"struct ItemList\n"
" {\n"
"  Item[] list;\n"
"  ulen cur;\n"
" };\n"
"\n"
"struct TextList\n"
" {\n"
"  text name;\n"
"  Bool open;\n"
"  \n"
"  FormatPtr format;\n"
"  OptCoord bullet_space;\n"
"  OptCoord item_space;\n"
"  \n"
"  ItemList list;\n"
" };\n"
"\n"
"struct Border\n"
" {\n"
"  text name;\n"
"  Bool open;\n"
"  \n"
"  OptCoord space;\n"
"  OptRatio width;\n"
"  OptColor line;\n"
" };\n"
"\n"
"struct Cell\n"
" {\n"
"  text name;\n"
"  Bool open;\n"
"  \n"
"  OptULen span_x;\n"
"  OptULen span_y;\n"
"   \n"
"  FrameList list;\n"
" };\n"
"\n"
"struct Table\n"
" {\n"
"  text name;\n"
"  Bool open;\n"
"  \n"
"  BorderPtr border;\n"
"  OptBool hard;\n"
"  \n"
"  Coord[] width;\n"
"  CellPtr[] table;\n"
" };\n"
"\n"
"struct Link\n"
" {\n"
"  text name;\n"
"  Bool open;\n"
"  \n"
"  PagePtr page;\n"
"  ulen[] index_list;\n"
" };\n"
"\n"
"struct Span\n"
" {\n"
"  text body;\n"
"  FormatPtr format;\n"
"  RefPtr ref;\n"
" };\n"
"\n"
"type TextLine = Span[] ;\n"
"\n"
"struct FixedText\n"
" {\n"
"  text name;\n"
"  Bool open;\n"
"  \n"
"  FormatPtr format;\n"
"  \n"
"  TextLine[] list;\n"
" };\n"
"\n"
"struct OneLine\n"
" {\n"
"  text name;\n"
"  Bool open;\n"
"  \n"
"  OptAlign align;\n"
" };\n"
"\n"
"struct MultiLine\n"
" {\n"
"  text name;\n"
"  Bool open;\n"
"  \n"
"  OptRatio line_space;\n"
"  OptRatio first_line_space; \n"
" };\n"
"\n"
"struct Text\n"
" {\n"
"  text name;\n"
"  Bool open;\n"
"  \n"
"  PlacementPtr placement;\n"
"  FormatPtr format;\n"
"  \n"
"  Span[] list;  \n"
" };\n"
" \n"
" \n"
