/* struct TypeSet */

struct TypeSet : TypeDefCore
 {
  ulen indexes[17];
  DynArray<ulen> ind_map;

  DDL::FindNodeMap map;

  explicit TypeSet(ulen len)
   : ind_map(len)
   {
    Range(indexes).set(ulen(-1));

    map.add(1,"Link");
    map.add(2,"Book");
    map.add(5,"Page");
    map.add(4,"Frame");
    map.add(7,"DoubleLine");
    map.add(8,"SingleLine");
    map.add(9,"Bitmap");
    map.add(11,"FixedText");
    map.add(10,"FixedSpan");
    map.add(13,"Text");
    map.add(12,"Span");
    map.add(14,"MultiLine");
    map.add(15,"OneLine");
    map.add(16,"Format");
    map.add(17,"Font");
    map.add(6,"Ratio");
    map.add(3,"Point");

    map.complete();
   }

  DDL::MapSizeInfo structSizeInfo(DDL::StructNode *struct_node)
   {
    DDL::MapSizeInfo ret;

    switch( map.find(struct_node) )
      {
       case 1 :
        {
         indexes[0]=struct_node->index;
         ind_map[struct_node->index]=1;

         ret.set<S1>();

         DDL::SetFieldOffsets(struct_node,
                               "page_index",offsetof(S1,page_index),
                               "frame_index",offsetof(S1,frame_index)
                              );
        }
       return ret;

       case 2 :
        {
         indexes[1]=struct_node->index;
         ind_map[struct_node->index]=2;

         ret.set<S2>();

         DDL::SetFieldOffsets(struct_node,
                               "title",offsetof(S2,title),
                               "list",offsetof(S2,list),
                               "back",offsetof(S2,back),
                               "fore",offsetof(S2,fore)
                              );
        }
       return ret;

       case 5 :
        {
         indexes[4]=struct_node->index;
         ind_map[struct_node->index]=5;

         ret.set<S5>();

         DDL::SetFieldOffsets(struct_node,
                               "name",offsetof(S5,name),
                               "list",offsetof(S5,list),
                               "back",offsetof(S5,back),
                               "fore",offsetof(S5,fore),
                               "top",offsetof(S5,top),
                               "prev",offsetof(S5,prev),
                               "next",offsetof(S5,next)
                              );
        }
       return ret;

       case 4 :
        {
         indexes[3]=struct_node->index;
         ind_map[struct_node->index]=4;

         ret.set<S4>();

         DDL::SetFieldOffsets(struct_node,
                               "body",offsetof(S4,body),
                               "line",offsetof(S4,line),
                               "inner",offsetof(S4,inner),
                               "outer",offsetof(S4,outer),
                               "col",offsetof(S4,col)
                              );
        }
       return ret;

       case 7 :
        {
         indexes[6]=struct_node->index;
         ind_map[struct_node->index]=7;

         ret.set<S7>();

         DDL::SetFieldOffsets(struct_node,
                               "width",offsetof(S7,width),
                               "gray",offsetof(S7,gray),
                               "snow",offsetof(S7,snow)
                              );
        }
       return ret;

       case 8 :
        {
         indexes[7]=struct_node->index;
         ind_map[struct_node->index]=8;

         ret.set<S8>();

         DDL::SetFieldOffsets(struct_node,
                               "width",offsetof(S8,width),
                               "line",offsetof(S8,line)
                              );
        }
       return ret;

       case 9 :
        {
         indexes[8]=struct_node->index;
         ind_map[struct_node->index]=9;

         ret.set<S9>();

         DDL::SetFieldOffsets(struct_node,
                               "file_name",offsetof(S9,file_name)
                              );
        }
       return ret;

       case 11 :
        {
         indexes[10]=struct_node->index;
         ind_map[struct_node->index]=11;

         ret.set<S11>();

         DDL::SetFieldOffsets(struct_node,
                               "list",offsetof(S11,list),
                               "fmt",offsetof(S11,fmt)
                              );
        }
       return ret;

       case 10 :
        {
         indexes[9]=struct_node->index;
         ind_map[struct_node->index]=10;

         ret.set<S10>();

         DDL::SetFieldOffsets(struct_node,
                               "body",offsetof(S10,body),
                               "fmt",offsetof(S10,fmt),
                               "ref",offsetof(S10,ref)
                              );
        }
       return ret;

       case 13 :
        {
         indexes[12]=struct_node->index;
         ind_map[struct_node->index]=13;

         ret.set<S13>();

         DDL::SetFieldOffsets(struct_node,
                               "list",offsetof(S13,list),
                               "fmt",offsetof(S13,fmt),
                               "placement",offsetof(S13,placement)
                              );
        }
       return ret;

       case 12 :
        {
         indexes[11]=struct_node->index;
         ind_map[struct_node->index]=12;

         ret.set<S12>();

         DDL::SetFieldOffsets(struct_node,
                               "body",offsetof(S12,body),
                               "fmt",offsetof(S12,fmt),
                               "ref",offsetof(S12,ref)
                              );
        }
       return ret;

       case 14 :
        {
         indexes[13]=struct_node->index;
         ind_map[struct_node->index]=14;

         ret.set<S14>();

         DDL::SetFieldOffsets(struct_node,
                               "line_space",offsetof(S14,line_space),
                               "first_line_space",offsetof(S14,first_line_space)
                              );
        }
       return ret;

       case 15 :
        {
         indexes[14]=struct_node->index;
         ind_map[struct_node->index]=15;

         ret.set<S15>();

         DDL::SetFieldOffsets(struct_node,
                               "align",offsetof(S15,align)
                              );
        }
       return ret;

       case 16 :
        {
         indexes[15]=struct_node->index;
         ind_map[struct_node->index]=16;

         ret.set<S16>();

         DDL::SetFieldOffsets(struct_node,
                               "font",offsetof(S16,font),
                               "back",offsetof(S16,back),
                               "fore",offsetof(S16,fore),
                               "effect",offsetof(S16,effect)
                              );
        }
       return ret;

       case 17 :
        {
         indexes[16]=struct_node->index;
         ind_map[struct_node->index]=17;

         ret.set<S17>();

         DDL::SetFieldOffsets(struct_node,
                               "face",offsetof(S17,face),
                               "size",offsetof(S17,size),
                               "bold",offsetof(S17,bold),
                               "italic",offsetof(S17,italic),
                               "strength",offsetof(S17,strength)
                              );
        }
       return ret;

       case 6 :
        {
         indexes[5]=struct_node->index;
         ind_map[struct_node->index]=6;

         ret.set<S6>();

         DDL::SetFieldOffsets(struct_node,
                               "a",offsetof(S6,a),
                               "b",offsetof(S6,b)
                              );
        }
       return ret;

       case 3 :
        {
         indexes[2]=struct_node->index;
         ind_map[struct_node->index]=3;

         ret.set<S3>();

         DDL::SetFieldOffsets(struct_node,
                               "x",offsetof(S3,x),
                               "y",offsetof(S3,y)
                              );
        }
       return ret;

       default: Printf(Exception,"Unknown structure"); return ret;
      }
   }

  template <class T> struct IsStruct;

  template <class T>
  bool isStruct(DDL::StructNode *struct_node) const { return IsStruct<T>::Do(indexes,struct_node->index); }

  void guardFieldTypes(DDL::StructNode *struct_node) const
   {
    switch( ind_map[struct_node->index] )
      {
       case 1 :
        {
         DDL::GuardFieldTypes<
                               DDL::ulen_type,
                               DDL::ulen_type
                              >(*this,struct_node);
        }
       break;

       case 2 :
        {
         DDL::GuardFieldTypes<
                               DDL::MapText,
                               DDL::MapRange< DDL::MapPtr< S5 > >,
                               A5,
                               A5
                              >(*this,struct_node);
        }
       break;

       case 5 :
        {
         DDL::GuardFieldTypes<
                               DDL::MapText,
                               DDL::MapRange< S4 >,
                               A5,
                               A5,
                               DDL::MapPtr< S5 >,
                               DDL::MapPtr< S5 >,
                               DDL::MapPtr< S5 >
                              >(*this,struct_node);
        }
       break;

       case 4 :
        {
         DDL::GuardFieldTypes<
                               DDL::MapPolyPtr< S13 , S11 , S9 >,
                               DDL::MapPolyPtr< S8 , S7 >,
                               S3,
                               S3,
                               A5
                              >(*this,struct_node);
        }
       break;

       case 7 :
        {
         DDL::GuardFieldTypes<
                               S6,
                               A5,
                               A5
                              >(*this,struct_node);
        }
       break;

       case 8 :
        {
         DDL::GuardFieldTypes<
                               S6,
                               A5
                              >(*this,struct_node);
        }
       break;

       case 9 :
        {
         DDL::GuardFieldTypes<
                               DDL::MapText
                              >(*this,struct_node);
        }
       break;

       case 11 :
        {
         DDL::GuardFieldTypes<
                               DDL::MapRange< A1 >,
                               DDL::MapPtr< S16 >
                              >(*this,struct_node);
        }
       break;

       case 10 :
        {
         DDL::GuardFieldTypes<
                               DDL::MapText,
                               DDL::MapPtr< S16 >,
                               DDL::MapPolyPtr< S1 , S5 >
                              >(*this,struct_node);
        }
       break;

       case 13 :
        {
         DDL::GuardFieldTypes<
                               DDL::MapRange< S12 >,
                               DDL::MapPtr< S16 >,
                               DDL::MapPolyPtr< S15 , S14 >
                              >(*this,struct_node);
        }
       break;

       case 12 :
        {
         DDL::GuardFieldTypes<
                               DDL::MapText,
                               DDL::MapPtr< S16 >,
                               DDL::MapPolyPtr< S1 , S5 >
                              >(*this,struct_node);
        }
       break;

       case 14 :
        {
         DDL::GuardFieldTypes<
                               S6,
                               S6
                              >(*this,struct_node);
        }
       break;

       case 15 :
        {
         DDL::GuardFieldTypes<
                               A2
                              >(*this,struct_node);
        }
       break;

       case 16 :
        {
         DDL::GuardFieldTypes<
                               DDL::MapPtr< S17 >,
                               A5,
                               A5,
                               A3
                              >(*this,struct_node);
        }
       break;

       case 17 :
        {
         DDL::GuardFieldTypes<
                               DDL::MapText,
                               A4,
                               A6,
                               A6,
                               DDL::sint_type
                              >(*this,struct_node);
        }
       break;

       case 6 :
        {
         DDL::GuardFieldTypes<
                               A4,
                               A4
                              >(*this,struct_node);
        }
       break;

       case 3 :
        {
         DDL::GuardFieldTypes<
                               A4,
                               A4
                              >(*this,struct_node);
        }
       break;

       default: Printf(Exception,"Unknown structure");
      }
   }

  void erase(Place<void> place,DDL::StructNode *struct_node) const
   {
    switch( ind_map[struct_node->index] )
      {
       case 9 :
        {
         S9 *obj=place;

         obj->ext=0;
        }
       break;
       case 17 :
        {
         S17 *obj=place;

         obj->ext=0;
        }
       break;
      }
   }
 };

template <class T>
struct TypeSet::IsStruct
 {
  static bool Do(const ulen *,ulen) { return false; }
 };

template <>
struct TypeSet::IsStruct<TypeDefCore::S1>
 {
  static bool Do(const ulen *indexes,ulen index) { return index==indexes[0]; }
 };

template <>
struct TypeSet::IsStruct<TypeDefCore::S2>
 {
  static bool Do(const ulen *indexes,ulen index) { return index==indexes[1]; }
 };

template <>
struct TypeSet::IsStruct<TypeDefCore::S5>
 {
  static bool Do(const ulen *indexes,ulen index) { return index==indexes[4]; }
 };

template <>
struct TypeSet::IsStruct<TypeDefCore::S4>
 {
  static bool Do(const ulen *indexes,ulen index) { return index==indexes[3]; }
 };

template <>
struct TypeSet::IsStruct<TypeDefCore::S7>
 {
  static bool Do(const ulen *indexes,ulen index) { return index==indexes[6]; }
 };

template <>
struct TypeSet::IsStruct<TypeDefCore::S8>
 {
  static bool Do(const ulen *indexes,ulen index) { return index==indexes[7]; }
 };

template <>
struct TypeSet::IsStruct<TypeDefCore::S9>
 {
  static bool Do(const ulen *indexes,ulen index) { return index==indexes[8]; }
 };

template <>
struct TypeSet::IsStruct<TypeDefCore::S11>
 {
  static bool Do(const ulen *indexes,ulen index) { return index==indexes[10]; }
 };

template <>
struct TypeSet::IsStruct<TypeDefCore::S10>
 {
  static bool Do(const ulen *indexes,ulen index) { return index==indexes[9]; }
 };

template <>
struct TypeSet::IsStruct<TypeDefCore::S13>
 {
  static bool Do(const ulen *indexes,ulen index) { return index==indexes[12]; }
 };

template <>
struct TypeSet::IsStruct<TypeDefCore::S12>
 {
  static bool Do(const ulen *indexes,ulen index) { return index==indexes[11]; }
 };

template <>
struct TypeSet::IsStruct<TypeDefCore::S14>
 {
  static bool Do(const ulen *indexes,ulen index) { return index==indexes[13]; }
 };

template <>
struct TypeSet::IsStruct<TypeDefCore::S15>
 {
  static bool Do(const ulen *indexes,ulen index) { return index==indexes[14]; }
 };

template <>
struct TypeSet::IsStruct<TypeDefCore::S16>
 {
  static bool Do(const ulen *indexes,ulen index) { return index==indexes[15]; }
 };

template <>
struct TypeSet::IsStruct<TypeDefCore::S17>
 {
  static bool Do(const ulen *indexes,ulen index) { return index==indexes[16]; }
 };

template <>
struct TypeSet::IsStruct<TypeDefCore::S6>
 {
  static bool Do(const ulen *indexes,ulen index) { return index==indexes[5]; }
 };

template <>
struct TypeSet::IsStruct<TypeDefCore::S3>
 {
  static bool Do(const ulen *indexes,ulen index) { return index==indexes[2]; }
 };

