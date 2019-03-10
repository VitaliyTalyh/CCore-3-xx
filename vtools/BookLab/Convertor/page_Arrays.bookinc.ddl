<frame>



</frame>
<h2>
<frame>
Arrays
</frame>
</h2>
<frame>



</frame>
<p class="Files" >
<frame>
Files 
</frame>
<b>
<frame>
CCore/inc/Array.h
</frame>
</b>
<frame>
 
</frame>
<b>
<frame>
CCore/src/Array.cpp
</frame>
</b>
</p>
<frame>



</frame>
<p class="Files" >
<frame>
Subfolders 
</frame>
<b>
<frame>
CCore/inc/array
</frame>
</b>
<frame>
 
</frame>
<b>
<frame>
CCore/src/array
</frame>
</b>
</p>
<frame>



</frame>
<h3>
<frame>
Helpers
</frame>
</h3>
<frame>



</frame>
<p>
<frame>

There are several types that are used to specify the constructor behavior. 

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


/* words */ 

enum DoBuildType { 
</frame>
<span class="Att" >
<frame>
DoBuild
</frame>
</span>
<frame>
 };
 
enum DoReserveType { 
</frame>
<span class="Att" >
<frame>
DoReserve
</frame>
</span>
<frame>
 };


</frame>
</pre>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
DoBuild
</frame>
</b>
<frame>
 and 
</frame>
<b>
<frame>
DoReserve
</frame>
</b>
<frame>
 are 
</frame>
<b>
<frame>
word
</frame>
</b>
<frame>
s. They designate the build and the reserve variant of 
the constructor respectively.

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


template &lt;int Sw&gt;
class DoSomething
 {
   ulen len;
   ulen maxlen;
   
  public: 
  
   explicit DoSomething(ulen len); // maxlen == len 
  
   DoSomething(ulen len,ulen maxlen); // maxlen >= len
   
   ulen getLen() const { return len; }
   
   ulen getMaxLen() const { return maxlen; }
 };
 
typedef DoSomething&lt;1&gt; 
</frame>
<span class="Att" >
<frame>
DoRaw
</frame>
</span>
<frame>
;

typedef DoSomething&lt;2&gt; 
</frame>
<span class="Att" >
<frame>
DoFill
</frame>
</span>
<frame>
; 

typedef DoSomething&lt;3&gt; 
</frame>
<span class="Att" >
<frame>
DoCopy
</frame>
</span>
<frame>
; 

typedef DoSomething&lt;4&gt; 
</frame>
<span class="Att" >
<frame>
DoCast
</frame>
</span>
<frame>
; 

typedef DoSomething&lt;5&gt; 
</frame>
<span class="Att" >
<frame>
DoSwap
</frame>
</span>
<frame>
; 

typedef DoSomething&lt;6&gt; 
</frame>
<span class="Att" >
<frame>
DoCreate
</frame>
</span>
<frame>
; 


</frame>
</pre>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
DoRaw
</frame>
</b>
<frame>
, 
</frame>
<b>
<frame>
DoFill
</frame>
</b>
<frame>
, 
</frame>
<b>
<frame>
DoCopy
</frame>
</b>
<frame>
, 
</frame>
<b>
<frame>
DoCast
</frame>
</b>
<frame>
, 
</frame>
<b>
<frame>
DoSwap
</frame>
</b>
<frame>
, 
</frame>
<b>
<frame>
DoCreate
</frame>
</b>
<frame>
 are not 
</frame>
<b>
<frame>
word
</frame>
</b>
<frame>
s, but 

</frame>
<b>
<frame>
Small Data Type
</frame>
</b>
<frame>
s. They designate the correspondent variant of the constructor and carry two parameters:
the array length and the reserved length. When the array is being created, the reserved length determines
the memory space to be allocated, and the length is the number of elements to be created. An exception is thrown,
if 
</frame>
<b>
<frame>
len
</frame>
</b>
<frame>
 is greater than 
</frame>
<b>
<frame>
maxlen
</frame>
</b>
<frame>
.

</frame>
</p>
<frame>



</frame>
<h3>
<frame>
Arrays
</frame>
</h3>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
Array
</frame>
</b>
<frame>
 is a container, where multiple items comprise a continuous range.  
The simplest such "container" is the embedded type "array of" 
</frame>
<b>
<frame>
T[Len]
</frame>
</b>
<frame>
.
Unfortunately, this type lacks many abilities, required in applications, so we need a variety
of 
</frame>
<b>
<frame>
Array
</frame>
</b>
<frame>
s. We don't use STL 
</frame>
<b>
<frame>
vector
</frame>
</b>
<frame>
, because it also has many deficiencies.

</frame>
<b>
<frame>
CCore
</frame>
</b>
<frame>
 
</frame>
<b>
<frame>
Array
</frame>
</b>
<frame>
s use the 
</frame>
<b>
<frame>
CCore
</frame>
</b>
<frame>
 heap with its extra functionality.
They also customizable using an 
</frame>
<b>
<frame>
Algorithm Package
</frame>
</b>
<frame>
 of array algorithms.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
CCore
</frame>
</b>
<frame>
 
</frame>
<b>
<frame>
Array
</frame>
</b>
<frame>
s implement 
</frame>
<b>
<frame>
Range Access Interface
</frame>
</b>
<frame>
. They also provide the index access to elements
through the overloaded 
</frame>
<b>
<frame>
operator []
</frame>
</b>
<frame>
 and the checked index access with the method 
</frame>
<b>
<frame>
at()
</frame>
</b>
<frame>
.

</frame>
</p>
<frame>



</frame>
<p>
<frame>

Constant 
</frame>
<b>
<frame>
CCore
</frame>
</b>
<frame>
 
</frame>
<b>
<frame>
Array
</frame>
</b>
<frame>
s give constant access to its elements.

</frame>
</p>
<frame>



</frame>
<p>
<frame>

Allocation errors and index check errors throw exceptions. Default constructors are no-throw.

</frame>
</p>
<frame>



</frame>
<p>
<frame>

The method 
</frame>
<b>
<frame>
apply()
</frame>
</b>
<frame>
 applies the functor, given by a 
</frame>
<a href="page_FunctorType.html" >
<b>
<frame>
Functor Init
</frame>
</b>
</a>
<frame>
, to array elements.
If the array is constant, then element references are constant too.
The variant 
</frame>
<b>
<frame>
apply_const()
</frame>
</b>
<frame>
 also enforces constantness.
It also may 
</frame>
<a href="page_ApplyToRange.html" >
<frame>
return a functor result
</frame>
</a>
<frame>
.

</frame>
</p>
<frame>



</frame>
<p>
<frame>

The method 
</frame>
<b>
<frame>
applyReverse()
</frame>
</b>
<frame>
 applies the functor, given by a 
</frame>
<a href="page_FunctorType.html" >
<b>
<frame>
Functor Init
</frame>
</b>
</a>
<frame>
, to array elements
in the reverse order.
If the array is constant, then element references are constant too.
The variant 
</frame>
<b>
<frame>
applyReverse_const()
</frame>
</b>
<frame>
 also enforces constantness.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
Array
</frame>
</b>
<frame>
s can be used with most types, there is no hard restrictions on type properties.
The only strong requirement is: the type destructor must be no-throw. Some operations, however,
require additional type properties. For example, to use 
</frame>
<b>
<frame>
cloneTo()
</frame>
</b>
<frame>
 methods the type must be copyable.

</frame>
</p>
<frame>



</frame>
<p>
<frame>

All 
</frame>
<b>
<frame>
CCore
</frame>
</b>
<frame>
 
</frame>
<b>
<frame>
Array
</frame>
</b>
<frame>
s available through the header 
</frame>
<b>
<frame>
CCore/inc/Array.h
</frame>
</b>
<frame>
.

</frame>
</p>
<frame>



</frame>
<h4>
<frame>
TempArray
</frame>
</h4>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
TempArray
</frame>
</b>
<frame>
 is the simplest of 
</frame>
<b>
<frame>
Array
</frame>
</b>
<frame>
s. It is applicable only to POD types.
This container combines stack storage and dynamic storage to speed up the array construction/destruction 
for a short lengths. Use this 
</frame>
<b>
<frame>
Array
</frame>
</b>
<frame>
 if you need a temporary buffer with expected short length in
the most cases.

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


template &lt;class T,ulen StackLen&gt;
class 
</frame>
<span class="Att" >
<frame>
TempArray
</frame>
</span>
<frame>
 : NoCopy
 {
  private:
  
   T *ptr;
   ulen len;
   
   T buf[StackLen];
   
  public:
   
   // constructors
   
   TempArray() noexcept;
   
   explicit TempArray(ulen len);
   
   ~TempArray();
   
   // methods
   
   bool isEmpty() const;

   bool notEmpty() const;

   void provide(ulen len);
   
   void reset(ulen len);

   bool extend(ulen len);

   void erase();

   // range access
   
   T * getPtr() { return ptr; }
   
   const T * getPtr() const { return ptr; }
   
   const T * getPtr_const() const { return ptr; }
   
   ulen getLen() const { return len; }
   
   // index access
   
   T &amp; operator [] (ulen index);
   
   const T &amp; operator [] (ulen index) const;
   
   T &amp; at(ulen index);
   
   const T &amp; at(ulen index) const;
   
   // apply
   
   auto apply(FuncInitArgType&lt;T &amp;&gt; func_init);
   
   auto apply(FuncInitArgType&lt;const T &amp;&gt; func_init) const;
   
   auto apply_const(FuncInitArgType&lt;const T &amp;&gt; func_init) const;
   
   auto applyReverse(FuncInitArgType&lt;T &amp;&gt; func_init);
   
   auto applyReverse(FuncInitArgType&lt;const T &amp;&gt; func_init) const;

   auto applyReverse_const(FuncInitArgType&lt;const T &amp;&gt; func_init) const;
 };


</frame>
</pre>
<frame>



</frame>
<p>
<frame>

If the array length is not greater than 
</frame>
<b>
<frame>
StackLen
</frame>
</b>
<frame>
, then 
</frame>
<b>
<frame>
TempArray
</frame>
</b>
<frame>
 uses the internal buffer.
Otherwise, the space for elements is dynamically allocated.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
provide()
</frame>
</b>
<frame>
 ensures the array has at least the given length, reallocating it if required.
The previous array content may be lost. The new content is not initialized.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
reset()
</frame>
</b>
<frame>
 recreates the array with the given length, reallocating it if required.
The previous array content may be lost. The new content is not initialized.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
extend()
</frame>
</b>
<frame>
 extends the array up to the given length. 
If 
</frame>
<b>
<frame>
len
</frame>
</b>
<frame>
 is less or equal than the current array length, the method does nothing and returns 
</frame>
<b>
<frame>
false
</frame>
</b>
<frame>
.
Otherwise it extends the array, preserving the current content, and returns 
</frame>
<b>
<frame>
true
</frame>
</b>
<frame>
. 
The new content is not initialized. An exception is thrown if there is no memory.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
erase()
</frame>
</b>
<frame>
 erases the array.

</frame>
</p>
<frame>



</frame>
<p>
<frame>

Other methods are standard array methods.

</frame>
</p>
<frame>



</frame>
<a name="SimpleArray" >
<h4>
<frame>
SimpleArray
</frame>
</h4>
</a>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
SimpleArray
</frame>
</b>
<frame>
 is another "simple array". It is applicable to (almost) any types.

</frame>
</p>
<frame>



</frame>
<p>
<frame>

The second template argument of 
</frame>
<b>
<frame>
SimpleArray
</frame>
</b>
<frame>
 is an 
</frame>
<b>
<frame>
Algorithm Package
</frame>
</b>
<frame>
 of array algorithms.

</frame>
<b>
<frame>
SimpleArray
</frame>
</b>
<frame>
 uses only two of them: 
</frame>
<b>
<frame>
Create_default()
</frame>
</b>
<frame>
 and 
</frame>
<b>
<frame>
Destroy()
</frame>
</b>
<frame>
.
See 
</frame>
<a href="#ArrayAlgo" >
<frame>
below
</frame>
</a>
<frame>
 about array algorithms.

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


template &lt;class T,class Algo=ArrayAlgo_mini&lt;T&gt; &gt;
class 
</frame>
<span class="Att" >
<frame>
SimpleArray
</frame>
</span>
<frame>
 : NoCopy
 {
   T *ptr;
   ulen len;
   
  public:
  
   // constructors

   SimpleArray() noexcept;
   
   explicit SimpleArray(ulen len);
   
   ~SimpleArray();
   
   // std move

   SimpleArray(SimpleArray&lt;T,Algo&gt; &amp;&amp;obj) noexcept;

   SimpleArray&lt;T,Algo&gt; &amp; operator = (SimpleArray&lt;T,Algo&gt; &amp;&amp;obj) noexcept;

   // methods

   bool isEmpty() const;

   bool notEmpty() const;

   void erase();

   // range access
   
   T * getPtr() { return ptr; }
   
   const T * getPtr() const { return ptr; }
   
   const T * getPtr_const() const { return ptr; }
   
   ulen getLen() const { return len; }
   
   // index access
   
   T &amp; operator [] (ulen index); 
   
   const T &amp; operator [] (ulen index) const; 
   
   T &amp; at(ulen index); 
    
   const T &amp; at(ulen index) const; 
   
   // apply
   
   auto apply(FuncInitArgType&lt;T &amp;&gt; func_init);
   
   auto apply(FuncInitArgType&lt;const T &amp;&gt; func_init) const;
   
   auto apply_const(FuncInitArgType&lt;const T &amp;&gt; func_init) const;
   
   auto applyReverse(FuncInitArgType&lt;T &amp;&gt; func_init);
   
   auto applyReverse(FuncInitArgType&lt;const T &amp;&gt; func_init) const;

   auto applyReverse_const(FuncInitArgType&lt;const T &amp;&gt; func_init) const;

   // swap/move objects
   
   void objSwap(SimpleArray&lt;T,Algo&gt; &amp;obj);
   
   explicit SimpleArray(ToMoveCtor&lt;SimpleArray&lt;T,Algo&gt; &gt; obj);
 };


</frame>
</pre>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
SimpleArray
</frame>
</b>
<frame>
 allocates space dynamically.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
SimpleArray
</frame>
</b>
<frame>
 is std movable. The original object is nullified during the move.

</frame>
</p>
<frame>



</frame>
<p>
<frame>

Unlike 
</frame>
<b>
<frame>
TempArray
</frame>
</b>
<frame>
, 
</frame>
<b>
<frame>
SimpleArray
</frame>
</b>
<frame>
 is swappable and movable.

</frame>
</p>
<frame>



</frame>
<a name="DynArray" >
<h4>
<frame>
DynArray
</frame>
</h4>
</a>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
DynArray
</frame>
</b>
<frame>
 is the "main" of 
</frame>
<b>
<frame>
Array
</frame>
</b>
<frame>
s. It stores elements in a memory space with some
reserved memory behind. It can extend the range of elements, if there is an extra memory. 
If not and the type 
</frame>
<b>
<frame>
T
</frame>
</b>
<frame>
 supports 
</frame>
<a href="page_Move.html" >
<frame>
moving
</frame>
</a>
<frame>
, then the array extension can be performed
with either the memory block extension (using 
</frame>
<b>
<frame>
MemExtend()
</frame>
</b>
<frame>
) or the total reallocation with the content moving.
You can also release the extra memory. All details of the array functionality can be customized using the 
second template argument, which is an 
</frame>
<b>
<frame>
Algorithm Package
</frame>
</b>
<frame>
 of array algorithms. 

</frame>
</p>
<frame>



</frame>
<p>
<frame>

Alone with standard methods, 
</frame>
<b>
<frame>
DynArray
</frame>
</b>
<frame>
 has a bunch of methods to initialize and control the array content.

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


template &lt;class T,class Algo=ArrayAlgo&lt;T&gt; &gt;
class 
</frame>
<span class="Att" >
<frame>
DynArray
</frame>
</span>
<frame>
 : NoCopy
 {
   ....
 
  public:
  
   // constructors
   
   DynArray() noexcept ;
   
   template &lt;class S&gt;
   explicit DynArray(std::initializer_list&lt;S&gt; il); 
   
   explicit DynArray(ulen len); 
   
   DynArray(ulen len,ulen maxlen); 
    
   DynArray(DoReserveType,ulen maxlen); 
    
   explicit DynArray(DoRaw dotype); 
   
   template &lt;class ... SS&gt;
   explicit DynArray(DoFill dotype,SS &amp;&amp; ... ss); 
    
   DynArray(DoCopy dotype,const T src[]); 
   
   template &lt;class S&gt;
   DynArray(DoCast dotype,const S src[]); 
   
   DynArray(DoSwap dotype,T objs[]); 
   
   DynArray(DoCreate dotype,CreatorType&lt;T&gt; creator); 
    
   DynArray(DoBuildType,BuilderType&lt;T&gt; builder); 
    
   ~DynArray();

   // std move

   DynArray(DynArray&lt;T,Algo&gt; &amp;&amp;obj) noexcept;

   DynArray&lt;T,Algo&gt; &amp; operator = (DynArray&lt;T,Algo&gt; &amp;&amp;obj) noexcept;


</frame>
</pre>
<frame>



</frame>
<p>
<frame>

Non-default constructors reserve some space and build
some elements. The 
</frame>
<b>
<frame>
DoRaw
</frame>
</b>
<frame>
, ..., 
</frame>
<b>
<frame>
DoCreate
</frame>
</b>
<frame>
 arguments carry the length and the reserved
length of the array to be used.

</frame>
</p>
<frame>



</frame>
<p>
<frame>

Non-default constructors work the same way as the correspondent 
</frame>
<b>
<frame>
extend...()
</frame>
</b>
<frame>
 methods.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
DynArray(std::initializer_list&lt;S&gt; il)
</frame>
</b>
<frame>
 uses the initialization list to "cast" 
elements from the given.

</frame>
</p>
<frame>

   

</frame>
<p>
<frame>


</frame>
<b>
<frame>
DynArray(ulen len)
</frame>
</b>
<frame>
 creates the array of the 
</frame>
<b>
<frame>
len
</frame>
</b>
<frame>
 elements using the default constructor.

</frame>
</p>
<frame>

   

</frame>
<p>
<frame>


</frame>
<b>
<frame>
DynArray(ulen len,ulen maxlen)
</frame>
</b>
<frame>
 also performs the default initialization of the 
</frame>
<b>
<frame>
len
</frame>
</b>
<frame>
 elements, 
but reserves a space for the 
</frame>
<b>
<frame>
maxlen
</frame>
</b>
<frame>
 elements. An exception is thrown,
if 
</frame>
<b>
<frame>
len
</frame>
</b>
<frame>
 is greater than 
</frame>
<b>
<frame>
maxlen
</frame>
</b>
<frame>
.

</frame>
</p>
<frame>

   

</frame>
<p>
<frame>


</frame>
<b>
<frame>
DynArray(DoReserveType,ulen maxlen)
</frame>
</b>
<frame>
 just reserves a space.

</frame>
</p>
<frame>

   

</frame>
<p>
<frame>


</frame>
<b>
<frame>
DynArray(DoRaw dotype)
</frame>
</b>
<frame>
 performs the "raw" initialization. If the 
</frame>
<b>
<frame>
T
</frame>
</b>
<frame>
 is a POD type, elements
are not initialized. If not, the default initialization is performed.

</frame>
</p>
<frame>

   

</frame>
<p>
<frame>


</frame>
<b>
<frame>
DynArray(DoFill dotype,SS &amp;&amp; ... ss)
</frame>
</b>
<frame>
 creates new elements using some constructor, 
the specified arguments are forwarded to this constructor.

</frame>
</p>
<frame>

   

</frame>
<p>
<frame>


</frame>
<b>
<frame>
DynArray(DoCopy dotype,const T src[])
</frame>
</b>
<frame>
 creates new elements using the copy constructor, 
</frame>
<b>
<frame>
src
</frame>
</b>
<frame>
 
is a range of length 
</frame>
<b>
<frame>
dotype.getLen()
</frame>
</b>
<frame>
, its members are copied memberwise.

</frame>
</p>
<frame>

   

</frame>
<p>
<frame>


</frame>
<b>
<frame>
DynArray(DoCast dotype,const S src[])
</frame>
</b>
<frame>
 creates new elements using the "cast" constructor, 
</frame>
<b>
<frame>
src
</frame>
</b>
<frame>
 is a range of length

</frame>
<b>
<frame>
dotype.getLen()
</frame>
</b>
<frame>
, its members are casted memberwise.

</frame>
</p>
<frame>

   

</frame>
<p>
<frame>


</frame>
<b>
<frame>
DynArray(DoSwap dotype,T objs[])
</frame>
</b>
<frame>
 creates new elements using the "swap move" approach. 
I.e. new elements are created using the default constructor and swapped with members of the range 
</frame>
<b>
<frame>
objs
</frame>
</b>
<frame>
.

</frame>
</p>
<frame>

   

</frame>
<p>
<frame>


</frame>
<b>
<frame>
DynArray(DoCreate dotype,CreatorType&lt;T&gt; creator)
</frame>
</b>
<frame>
 uses the given 
</frame>
<b>
<frame>
Creator
</frame>
</b>
<frame>
 object to create new elements.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
DynArray(DoBuildType,BuilderType&lt;T&gt; builder)
</frame>
</b>
<frame>
 uses the given 
</frame>
<b>
<frame>
Builder
</frame>
</b>
<frame>
 object to create new elements.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
DynArray
</frame>
</b>
<frame>
 is std movable. The original object is nullified during the move.

</frame>
</p>
<frame>




</frame>
<pre>
<frame>


   // range access
   
   T * getPtr();
   
   const T * getPtr() const;
   
   const T * getPtr_const() const;
   
   ulen getLen() const;
   
   ulen getMaxLen() const;
   
   ulen getExtraLen() const;
   
   // index access
   
   T &amp; operator [] (ulen index);
   
   const T &amp; operator [] (ulen index) const;
   
   T &amp; at(ulen index);
   
   const T &amp; at(ulen index) const;


</frame>
</pre>
<frame>



</frame>
<p>
<frame>

Range access and index access methods are standard. Two additional methods report memory allocation. 

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
getMaxLen()
</frame>
</b>
<frame>
 returns the reserved array length (in objects).

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
getExtraLen()
</frame>
</b>
<frame>
 is the extra space available (in objects).

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


   // methods
   
   bool isEmpty() const;

   bool notEmpty() const;

   void cloneTo(DynArray&lt;T,Algo&gt; &amp;ret) const;
    
   void reserve(ulen extra_len);
   
   void erase();
    

</frame>
</pre>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
isEmpty()
</frame>
</b>
<frame>
 returns 
</frame>
<b>
<frame>
true
</frame>
</b>
<frame>
 iff the array is empty.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
notEmpty()
</frame>
</b>
<frame>
 returns 
</frame>
<b>
<frame>
true
</frame>
</b>
<frame>
 iff the array is not empty.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
cloneTo()
</frame>
</b>
<frame>
 clones the array. The reserved length is also preserved. The type 
</frame>
<b>
<frame>
T
</frame>
</b>
<frame>
 must be copyable. 

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
reserve()
</frame>
</b>
<frame>
 reserves the space for 
</frame>
<b>
<frame>
extra_len
</frame>
</b>
<frame>
 objects.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
erase()
</frame>
</b>
<frame>
 erases the array, it gets to the null state, with no objects and no memory allocated.

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


   // shrink 
   
   ulen shrink(ulen delta_len);
    
   bool shrink_one();
    
   ulen shrink_all();
    
   void shrink_extra();
    
   void shrink_reserve(ulen maxlen);

   void shrink_reserve();


</frame>
</pre>
<frame>
   


</frame>
<p>
<frame>


</frame>
<b>
<frame>
shrink()
</frame>
</b>
<frame>
 destroys the last up to 
</frame>
<b>
<frame>
delta_len
</frame>
</b>
<frame>
 elements of the array. It returns the 
number of elements destroyed.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
shrink_one()
</frame>
</b>
<frame>
 destroys the last element (if any). It returns 
</frame>
<b>
<frame>
true
</frame>
</b>
<frame>
, if the element is destroyed, and

</frame>
<b>
<frame>
false
</frame>
</b>
<frame>
 if the array is empty.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
shrink_all()
</frame>
</b>
<frame>
 destroys all array elements. It returns the number of elements destroyed.

</frame>
</p>
<frame>



</frame>
<p>
<frame>

These three methods doesn't change the reserved array length.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
shrink_extra()
</frame>
</b>
<frame>
 shrinks the memory block, returning the extra memory to the heap. After this method
the reserved array length becomes equal to the array length.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
shrink_reserve(ulen maxlen)
</frame>
</b>
<frame>
 may shrink the memory block to store the given number of elements. It gives
a more precise control over the reserved memory. It works only if the following natural condition satisfied:

</frame>
<b>
<frame>
maxlen&lt;getMaxLen()
</frame>
</b>
<frame>
 and 
</frame>
<b>
<frame>
maxlen&gt;=getLen()
</frame>
</b>
<frame>
.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
shrink_reserve()
</frame>
</b>
<frame>
 works as 
</frame>
<b>
<frame>
shrink_reserve(ulen maxlen)
</frame>
</b>
<frame>
 with 
</frame>
<b>
<frame>
maxlen
</frame>
</b>
<frame>
 equals "double size" of the 
actual array length.

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


   // extend
   
   PtrLen&lt;T&gt; extend_raw(ulen delta_len);
   
   PtrLen&lt;T&gt; extend_default(ulen delta_len);
   
   template &lt;class ... SS&gt;
   PtrLen&lt;T&gt; extend_fill(ulen delta_len,SS &amp;&amp; ... ss);
    
   PtrLen&lt;T&gt; extend_copy(ulen delta_len,const T src[]);

   PtrLen&lt;T&gt; extend_copy(PtrLen&lt;const T&gt; src);
   
   template &lt;class S&gt;
   PtrLen&lt;T&gt; extend_cast(ulen delta_len,const S src[]);

   template &lt;class S&gt;
   PtrLen&lt;T&gt; extend_cast(PtrLen&lt;const S&gt; src);
   
   PtrLen&lt;T&gt; extend_swap(ulen delta_len,T objs[]);

   PtrLen&lt;T&gt; extend_swap(PtrLen&lt;T&gt; objs);
   
   PtrLen&lt;T&gt; extend(ulen delta_len,CreatorType&lt;T&gt; creator);
   
   PtrLen&lt;T&gt; extend(BuilderType&lt;T&gt; builder);
   

</frame>
</pre>
<frame>
   


</frame>
<p>
<frame>


</frame>
<b>
<frame>
extend...()
</frame>
</b>
<frame>
 is a family of methods, which extends the array with number elements. They differ in
element construction ways. All of them, except the last, has the first argument 
</frame>
<b>
<frame>
delta_len
</frame>
</b>
<frame>
, 
which is the number of new elements. The return value is the range of these new elements.

</frame>
<b>
<frame>
extend...()
</frame>
</b>
<frame>
 are transactional, i.e. if the method has failed, then the array remains
in the original state, an exception is thrown.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
extend_raw()
</frame>
</b>
<frame>
 for POD types leaves new elements uninitialized. For other types it works
like 
</frame>
<b>
<frame>
extend_default()
</frame>
</b>
<frame>
.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
extend_default()
</frame>
</b>
<frame>
 creates new elements using the default constructor.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
extend_fill()
</frame>
</b>
<frame>
 creates new elements using some constructor, the specified arguments are forwarded
to this constructor.  

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
extend_copy()
</frame>
</b>
<frame>
 creates new elements using the copy constructor, 
</frame>
<b>
<frame>
src
</frame>
</b>
<frame>
 is a range of length

</frame>
<b>
<frame>
delta_len
</frame>
</b>
<frame>
, its members are copied memberwise.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
extend_cast()
</frame>
</b>
<frame>
 creates new elements using the "cast" constructor, 
</frame>
<b>
<frame>
src
</frame>
</b>
<frame>
 is a range of length

</frame>
<b>
<frame>
delta_len
</frame>
</b>
<frame>
, its members are casted memberwise.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
extend_swap()
</frame>
</b>
<frame>
 creates new elements using the "swap move" approach. I.e. new elements are 
created using the default constructor and swapped with members of the range 
</frame>
<b>
<frame>
objs
</frame>
</b>
<frame>
.

</frame>
</p>
<frame>



</frame>
<p>
<frame>

Two final 
</frame>
<b>
<frame>
extend()
</frame>
</b>
<frame>
 are generic. The first of them uses the given 
</frame>
<b>
<frame>
Creator
</frame>
</b>
<frame>
 object to create 
new elements, and the second uses the 
</frame>
<b>
<frame>
Builder
</frame>
</b>
<frame>
. See 
</frame>
<a href="#Creator" >
<frame>
below
</frame>
</a>
<frame>
 explanations about 
</frame>
<b>
<frame>
Creator
</frame>
</b>
<frame>
s and

</frame>
<b>
<frame>
Builder
</frame>
</b>
<frame>
s.

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


   // append
   
   T * append_raw();
   
   T * append_default();
    
   template &lt;class ... SS&gt;
   T * append_fill(SS &amp;&amp; ... ss); 
   
   T * append_copy(const T &amp;src);
   
   T * append_swap(T &amp;obj);
   
   T * append(CreatorType&lt;T&gt; creator);
   

</frame>
</pre>
<frame>
   


</frame>
<p>
<frame>


</frame>
<b>
<frame>
append...()
</frame>
</b>
<frame>
 is a family of methods to append one element to the array. They are similar to the
correspondent 
</frame>
<b>
<frame>
extend...()
</frame>
</b>
<frame>
 methods and do exactly the same with 
</frame>
<b>
<frame>
delta_len
</frame>
</b>
<frame>
 equals 1.   
The return value is a pointer to the created element.

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


   // apply
   
   auto apply(FuncInitArgType&lt;T &amp;&gt; func_init);
   
   auto apply(FuncInitArgType&lt;const T &amp;&gt; func_init) const;
   
   auto apply_const(FuncInitArgType&lt;const T &amp;&gt; func_init) const;
   
   auto applyReverse(FuncInitArgType&lt;T &amp;&gt; func_init);
   
   auto applyReverse(FuncInitArgType&lt;const T &amp;&gt; func_init) const;

   auto applyReverse_const(FuncInitArgType&lt;const T &amp;&gt; func_init) const;


</frame>
</pre>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
apply...()
</frame>
</b>
<frame>
 methods are standard.

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


   // swap/move objects
   
   void objSwap(DynArray&lt;T,Algo&gt; &amp;obj);
   
   explicit DynArray(ToMoveCtor&lt;DynArray&lt;T,Algo&gt; &gt; obj);
 };


</frame>
</pre>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
DynArray
</frame>
</b>
<frame>
 is swappable and movable.

</frame>
</p>
<frame>



</frame>
<a name="RefArray" >
<h4>
<frame>
RefArray and AtomicRefArray
</frame>
</h4>
</a>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
RefArray
</frame>
</b>
<frame>
 and 
</frame>
<b>
<frame>
AtomicRefArray
</frame>
</b>
<frame>
 are copyable arrays with efficient copy constructors.
It's assumed, the type 
</frame>
<b>
<frame>
T
</frame>
</b>
<frame>
 is copyable.
Multiple copies of arrays may share the same state. The state has a reference counter, which is used to
end its life-time. The only difference between 
</frame>
<b>
<frame>
RefArray
</frame>
</b>
<frame>
 and 
</frame>
<b>
<frame>
AtomicRefArray
</frame>
</b>
<frame>
 is the former
uses the atomic reference counting to be viable in a multi-threaded environment.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
RefArray
</frame>
</b>
<frame>
 has a simulated value semantic. It means, that you may consider different copies of an array
as independent variables, despite they may share the state. That is because 
</frame>
<b>
<frame>
RefArray
</frame>
</b>
<frame>
 provides
only a constant access to elements. So far you don't violate this constantness (using the const-cast, for example),
you may safely assume that each copy is different. To modify the array you have to call
the method 
</frame>
<b>
<frame>
modify()
</frame>
</b>
<frame>
 (or 
</frame>
<b>
<frame>
modifyReverse()
</frame>
</b>
<frame>
). 
This method "unshares" the array, if necessary, and gives a non-constant access to elements.

</frame>
<b>
<frame>
modifyReverse()
</frame>
</b>
<frame>
 is doing the same thing as 
</frame>
<b>
<frame>
modify()
</frame>
</b>
<frame>
, but gives a "reversed" range of elements.

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


template &lt;class T,class Algo=ArrayAlgo&lt;T&gt; &gt;
class 
</frame>
<span class="Att" >
<frame>
RefArray
</frame>
</span>
<frame>

 {
   ....

  public:
  
   // constructors
   
   RefArray() noexcept;
   
   template &lt;class S&gt;
   explicit RefArray(std::initializer_list&lt;S&gt; il);
   
   explicit RefArray(ulen len); 
   
   RefArray(ulen len,ulen maxlen); 
    
   RefArray(DoReserveType,ulen maxlen); 
    
   explicit RefArray(DoRaw dotype); 
   
   template &lt;class ... SS&gt;
   explicit RefArray(DoFill dotype,SS &amp;&amp; ... ss); 
    
   RefArray(DoCopy dotype,const T src[]); 
 
   template &lt;class S&gt;
   RefArray(DoCast dotype,const S src[]); 
   
   RefArray(DoSwap dotype,T objs[]); 
   
   RefArray(DoCreate dotype,CreatorType&lt;T&gt; creator); 
    
   RefArray(DoBuildType,BuilderType&lt;T&gt; builder); 
    
   ~RefArray();
   
   // range access
   
   const T * getPtr() const;
   
   const T * getPtr_const() const;
   
   ulen getLen() const;
   
   ulen getMaxLen() const;
   
   ulen getExtraLen() const;
   
   // index access
   
   const T & operator [] (ulen index) const;
   
   const T & at(ulen index) const;
   
   // methods
   
   bool isEmpty() const;

   bool notEmpty() const;

   PtrLen&lt;T&gt; modify();
   
   PtrLenReverse&lt;T&gt; modifyReverse() { return RangeReverse(modify()); }

   void cloneTo(RefArray&lt;T,Algo&gt; &amp;ret) const;
    
   void reserve(ulen extra_len);
   
   void erase();
    
   // shrink
   
   ulen shrink(ulen delta_len);
    
   bool shrink_one();
    
   ulen shrink_all();
    
   void shrink_extra();
    
   void shrink_reserve(ulen maxlen);

   void shrink_reserve();

   // extend
   
   PtrLen&lt;T&gt; extend_raw(ulen delta_len);
   
   PtrLen&lt;T&gt; extend_default(ulen delta_len);
   
   template &lt;class ... SS&gt;
   PtrLen&lt;T&gt; extend_fill(ulen delta_len,SS &amp;&amp; ... ss);
    
   PtrLen&lt;T&gt; extend_copy(ulen delta_len,const T src[]);
   
   PtrLen&lt;T&gt; extend_copy(PtrLen&lt;const T&gt; src);

   template &lt;class S&gt;
   PtrLen&lt;T&gt; extend_cast(ulen delta_len,const S src[]);
   
   template &lt;class S&gt;
   PtrLen&lt;T&gt; extend_cast(PtrLen&lt;const S&gt; src);

   PtrLen&lt;T&gt; extend_swap(ulen delta_len,T objs[]);
   
   PtrLen&lt;T&gt; extend_swap(PtrLen&lt;T&gt; objs);

   PtrLen&lt;T&gt; extend(ulen delta_len,CreatorType&lt;T&gt; creator);
   
   PtrLen&lt;T&gt; extend(BuilderType&lt;T&gt; builder);
   
   // append
   
   T * append_raw();
    
   T * append_default();
    
   template &lt;class ... SS&gt;
   T * append_fill(SS &amp;&amp; ... ss); 
   
   T * append_copy(const T &amp;src);
   
   T * append_swap(T &amp;obj);
   
   T * append(CreatorType&lt;T&gt; creator);
   
   // apply
   
   void apply_modify(FuncInitArgType&lt;T &amp;&gt; func_init func_init);
   
   void apply(FuncInitArgType&lt;const T &amp;&gt; func_init) const;
   
   void applyReverse_modify(FuncInitArgType&lt;T &amp;&gt; func_init);
   
   void applyReverse(FuncInitArgType&lt;const T &amp;&gt; func_init) const;

   // swap/move objects
   
   void objSwap(RefArray&lt;T,Algo&gt; &amp;obj);
   
   explicit RefArray(ToMoveCtor&lt;RefArray&lt;T,Algo&gt; &gt; obj);
 };


</frame>
</pre>
<frame>



</frame>
<p>
<frame>

The 
</frame>
<b>
<frame>
RefArray
</frame>
</b>
<frame>
 methods are mostly the same as 
</frame>
<b>
<frame>
DynArray
</frame>
</b>
<frame>
 methods. The differences are:
index and range access methods gives only the constant access, and new class-specific methods 
</frame>
<b>
<frame>
modify()
</frame>
</b>
<frame>

and 
</frame>
<b>
<frame>
modifyReverse()
</frame>
</b>
<frame>
 exist.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
apply_modify()
</frame>
</b>
<frame>
 applies the functor, given by a 
</frame>
<a href="page_FunctorType.html" >
<b>
<frame>
Functor Init
</frame>
</b>
</a>
<frame>
, to array elements.
The array is unshared first.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
applyReverse_modify()
</frame>
</b>
<frame>
 applies the functor, given by a 
</frame>
<a href="page_FunctorType.html" >
<b>
<frame>
Functor Init
</frame>
</b>
</a>
<frame>
, to array elements
in the reverse order.
The array is unshared first.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
apply()
</frame>
</b>
<frame>
 applies the functor, given by a 
</frame>
<a href="page_FunctorType.html" >
<b>
<frame>
Functor Init
</frame>
</b>
</a>
<frame>
, to array elements.
This is a constant method.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
applyReverse()
</frame>
</b>
<frame>
 applies the functor, given by a 
</frame>
<a href="page_FunctorType.html" >
<b>
<frame>
Functor Init
</frame>
</b>
</a>
<frame>
, to array elements
in the reverse order.
This is a constant method.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
AtomicRefArray
</frame>
</b>
<frame>
 methods 
</frame>
<b>
<frame>
shrink_extra()
</frame>
</b>
<frame>
 and 
</frame>
<b>
<frame>
shrink_reserve()
</frame>
</b>
<frame>
 are not working, if the array is shared.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
AtomicRefArray
</frame>
</b>
<frame>
 has an extra special constructor

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


   template &lt;ulen MaxLen&gt; requires ( MaxLen&gt;0 )
   static constexpr ulen StaticMemLen = Base::template StaticMemLen&lt;MaxLen&gt; ;

   template &lt;class S&gt;
   AtomicRefArray(void *mem,ulen maxlen,std::initializer_list&lt;S&gt; il) requires ( TrivDtorType&lt;T&gt; )
                 // mem is aligned , maxlen &gt; 0 , il.size() &lt;= maxlen , static object !
    : AtomicRefArrayBase&lt;T,Algo&gt;(mem,maxlen)
    {
     Base::Extend_cast(ptr.getPtr(),il.size(),il.begin());
    }


</frame>
</pre>
<frame>



</frame>
<p>
<frame>

This constructor can be used to create a static 
</frame>
<b>
<frame>
AtomicRefArray
</frame>
</b>
<frame>
 with unlimited life-time. 
The type 
</frame>
<b>
<frame>
T
</frame>
</b>
<frame>
 must have a trivial destructor, however.
You must supply a statically allocated memory, aligned and proper size.
You also must supply a maximum number of elements (&gt;0) and an intializer list.
To calculate the required memory size use the meta constant 
</frame>
<b>
<frame>
StaticMemLen
</frame>
</b>
<frame>
.
The object state, created with this constructor, lives forever and contains the initial object array, initialized from the given intializer list.

</frame>
</p>
<frame>



</frame>
<h4>
<frame>
Collector
</frame>
</h4>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
Collector
</frame>
</b>
<frame>
 is not an array! The purpose of this container is to be an efficient collector of elements.
This container stores a sequence of elements in a list of arrays. So appending and extending 
operations are the most efficient. At desired moment you can copy or move this sequence into true array.
Or you can "flat" the 
</frame>
<b>
<frame>
Collector
</frame>
</b>
<frame>
 itself.

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


template &lt;class T,class Algo=ArrayAlgo&lt;T&gt; &gt;
class 
</frame>
<span class="Att" >
<frame>
Collector
</frame>
</span>
<frame>
 : NoCopy
 {
   ....

  public:
   
   // constructors
   
   static constexpr ulen DefaultBlockLen = 1024 ;
   static constexpr ulen MinBlockLen = 10 ;
   
   explicit Collector(ulen block_len=DefaultBlockLen) noexcept;
   
   ~Collector();

   // std move

   Collector(Collector&lt;T,Algo&gt; &amp;&amp;obj) noexcept;

   Collector&lt;T,Algo&gt; &amp; operator = (Collector&lt;T,Algo&gt; &amp;&amp;obj) noexcept;


</frame>
</pre>
<frame>
   


</frame>
<p>
<frame>

The argument of the 
</frame>
<b>
<frame>
Collector
</frame>
</b>
<frame>
 constructor is the number of elements in the single element block.
The default value is 1024.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
Collector
</frame>
</b>
<frame>
 is std movable. The original object is nullified during the move.

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


   // methods
   
   bool isEmpty() const;

   bool notEmpty() const;

   ulen getLen() const; 
   
   void erase();
   
   template &lt;class Container&gt;
   void extractTo(Container &amp;ret)
    {
     Container temp(DoBuild,Extractor(this));
     
     Swap(temp,ret);
    }
   
   template &lt;class Container&gt;
   void copyTo(Container &amp;ret) const
    {
     Container temp(DoBuild,Copyrator(this));
     
     Swap(temp,ret);
    }
   
   PtrLen&lt;T&gt; flat();
   

</frame>
</pre>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
Collector
</frame>
</b>
<frame>
 does not provide a direct access to its content.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
isEmpty()
</frame>
</b>
<frame>
 returns 
</frame>
<b>
<frame>
true
</frame>
</b>
<frame>
 iff the array is empty.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
notEmpty()
</frame>
</b>
<frame>
 returns 
</frame>
<b>
<frame>
true
</frame>
</b>
<frame>
 iff the array is not empty.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
getLen()
</frame>
</b>
<frame>
 is the number of the collected elements.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
erase()
</frame>
</b>
<frame>
 cleanup the container and put it into the null state.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
extractTo()
</frame>
</b>
<frame>
 moves the content to another (array) container. The target container must have the 
</frame>
<b>
<frame>
Build
</frame>
</b>
<frame>

constructor. 
</frame>
<b>
<frame>
Collector
</frame>
</b>
<frame>
 becomes empty after this operation.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
copyTo()
</frame>
</b>
<frame>
 copies the content to another (array) container. The target container must have the 
</frame>
<b>
<frame>
Build
</frame>
</b>
<frame>

constructor.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
flat()
</frame>
</b>
<frame>
 rebuilds the internal data storage, making it continuous. It returns the range of elements.
This range remains valid after extend or append operations (but may become invalid after any other
modifying operations).

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


   // shrink 
   
   ulen shrink(ulen delta_len);
    
   bool shrink_one();
    
   ulen shrink_all();

   void shrink_extra();
    
   // extend
   
   PtrLen&lt;T&gt; extend_raw(ulen delta_len);
   
   PtrLen&lt;T&gt; extend_default(ulen delta_len);
   
   template &lt;class ... SS&gt;
   PtrLen&lt;T&gt; extend_fill(ulen delta_len,SS &amp;&amp; ... ss);
    
   PtrLen&lt;T&gt; extend_copy(ulen delta_len,const T src[]);
   
   PtrLen&lt;T&gt; extend_copy(PtrLen&lt;const T&gt; src);

   template &lt;class S&gt;
   PtrLen&lt;T&gt; extend_cast(ulen delta_len,const S src[]);
   
   template &lt;class S&gt;
   PtrLen&lt;T&gt; extend_cast(PtrLen&lt;const S&gt; src);

   PtrLen&lt;T&gt; extend_swap(ulen delta_len,T objs[]);
   
   PtrLen&lt;T&gt; extend_swap(PtrLen&lt;T&gt; objs);

   PtrLen&lt;T&gt; extend(ulen delta_len,CreatorType&lt;T&gt; creator);
   
   PtrLen&lt;T&gt; extend(BuilderType&lt;T&gt; builder);
   
   // append
   
   T * append_raw();
   
   T * append_default();
    
   template &lt;class ... SS&gt;
   T * append_fill(SS &amp;&amp; ... ss); 
   
   T * append_copy(const T &amp;src);
   
   T * append_swap(T &amp;obj);
   
   T * append(CreatorType&lt;T&gt; creator);


</frame>
</pre>
<frame>
   


</frame>
<p>
<frame>


</frame>
<b>
<frame>
shrink...()
</frame>
</b>
<frame>
, 
</frame>
<b>
<frame>
extend...()
</frame>
</b>
<frame>
 and 
</frame>
<b>
<frame>
append...()
</frame>
</b>
<frame>
 methods are the same as for 
</frame>
<b>
<frame>
DynArray
</frame>
</b>
<frame>
.

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


   // swap/move object
   
   void objSwap(Collector&lt;T,Algo&gt; &amp;obj);
   
   explicit Collector(ToMoveCtor&lt;Collector&lt;T,Algo&gt; &gt; obj);
 };


</frame>
</pre>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
Collector
</frame>
</b>
<frame>
 is swappable and movable.

</frame>
</p>
<frame>



</frame>
<a name="ArrayAlgo" >
<h3>
<frame>
Array algorithms
</frame>
</h3>
</a>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
CCore
</frame>
</b>
<frame>
 
</frame>
<b>
<frame>
Array
</frame>
</b>
<frame>
 implementation is based on the 
</frame>
<b>
<frame>
Array Algorithm Package
</frame>
</b>
<frame>
s.
The default package is the 
</frame>
<b>
<frame>
ArrayAlgo
</frame>
</b>
<frame>
.

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


template &lt;class T,class Flags=
</frame>
<a href="page_NoThrowFlags.html" >
<frame>
GetNoThrowFlags
</frame>
</a>
<frame>
&lt;T&gt; &gt; struct ArrayAlgo;


</frame>
</pre>
<frame>



</frame>
<p>
<frame>

The exact implementation depends on the kind of 
</frame>
<b>
<frame>
T
</frame>
</b>
<frame>
.

</frame>
</p>
<frame>



</frame>
<p>
<frame>

If the type 
</frame>
<b>
<frame>
T
</frame>
</b>
<frame>
 defines the inner type 
</frame>
<b>
<frame>
ArrayAlgoType
</frame>
</b>
<frame>
, then this type will be used
as the package.

</frame>
</p>
<frame>



</frame>
<p>
<frame>

Otherwise there are two variants: one for the POD types, another for the other (class) types.

</frame>
</p>
<frame>



</frame>
<h4>
<frame>
ArrayAlgo_class
</frame>
</h4>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
ArrayAlgo_class
</frame>
</b>
<frame>
 is the generic (class) variant. 
The template argument 
</frame>
<b>
<frame>
Flags
</frame>
</b>
<frame>
 provides two flags: 
</frame>
<b>
<frame>
Default_no_throw
</frame>
</b>
<frame>
 and 
</frame>
<b>
<frame>
Copy_no_throw
</frame>
</b>
<frame>
.
The flag is 
</frame>
<b>
<frame>
true
</frame>
</b>
<frame>
, if the correspondent constructor (default or copy) is 
</frame>
<b>
<frame>
no-throw
</frame>
</b>
<frame>
 or does not exist.
It's an obligation of the class. The flag 
</frame>
<b>
<frame>
MoveTo_exist
</frame>
</b>
<frame>
 is 
</frame>
<b>
<frame>
true
</frame>
</b>
<frame>
 for replaceable types.
For such types an array can grow above the initial memory allocation length.

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


template &lt;NothrowDtorType T,class Flags=GetNoThrowFlags&lt;T&gt; &gt;
struct 
</frame>
<span class="Att" >
<frame>
ArrayAlgo_class
</frame>
</span>
<frame>
 : ArrayAlgoBase&lt;T&gt;
 {
  enum PropFlagType
   {
    Default_no_throw = Flags::Default_no_throw,
    Copy_no_throw = Flags::Copy_no_throw,
    
    MoveTo_exist = Meta::PoorFlag&lt;T, ReplaceableType&lt;T&gt; &gt;
   };
 
  static PtrLen&lt;T&gt; Create_raw(Place&lt;void&gt; place,ulen len) requires ( DefaultCtorType&lt;T&gt; ) ;
  
  static PtrLen&lt;T&gt; Create_default(Place&lt;void&gt; place,ulen len) requires ( DefaultCtorType&lt;T&gt; ) ;
   
  template &lt;class ... SS&gt;
  static PtrLen&lt;T&gt; Create_fill(Place&lt;void&gt; place,ulen len,SS &amp;&amp; ... ss) requires ( ConstructibleType&lt;T,SS...&gt; ) ;
  
  static PtrLen&lt;T&gt; Create_copy(Place&lt;void&gt; place,ulen len,const T src[]) requires ( CopyCtorType&lt;T&gt; ) ;
  
  template &lt;class S&gt;
  static PtrLen&lt;T&gt; Create_cast(Place&lt;void&gt; place,ulen len,const S src[]) requires ( ConstructibleType&lt;T,const S&gt; ) ;
  
  static PtrLen&lt;T&gt; Create_swap(Place&lt;void&gt; place,ulen len,T objs[]) requires ( DefaultCtorType&lt;T&gt; ) ;
   
  //
  //  Single
  // 
  
  static T * Create_swap(Place&lt;void&gt; place,T &amp;obj) noexcept( Default_no_throw ) requires ( DefaultCtorType&lt;T&gt; ) ;
   
  //
  //  ProvideLen() : double extension
  // 
  
  static ulen ProvideLen(ulen len,ulen maxlen,ulen extra_len);
   
  // 
  //  MoveTo() : no-throw
  //

  static PtrLen&lt;T&gt; MoveTo(T *ptr,ulen len,Place&lt;void&gt; place) noexcept requires ( ReplaceableType&lt;T&gt; ) ;
 };


</frame>
</pre>
<frame>




</frame>
<p>
<frame>

The package has the following members.

</frame>
</p>
<frame>



</frame>
<p>
<frame>

Flags 
</frame>
<b>
<frame>
Default_no_throw
</frame>
</b>
<frame>
 and 
</frame>
<b>
<frame>
Copy_no_throw
</frame>
</b>
<frame>
 are copied from the 
</frame>
<b>
<frame>
Flags
</frame>
</b>
<frame>
.

</frame>
</p>
<frame>



</frame>
<p>
<frame>

Flag 
</frame>
<b>
<frame>
MoveTo_exist
</frame>
</b>
<frame>
 is 
</frame>
<b>
<frame>
true
</frame>
</b>
<frame>
 for replaceable types.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
Create_...()
</frame>
</b>
<frame>
 creates a range of objects of the type 
</frame>
<b>
<frame>
T
</frame>
</b>
<frame>
 at the given place. To create an object,
the correspondent constructor is called. Objects are created in the ascending order. If some constructor
throw an exception, then the previously constructed objects are destroyed and the exception is propagated.
The range of the created objects is returned. The first two arguments are: the place to construct 
and the number of elements to construct. The place must be properly aligned and the memory space
must be large enough to contain the required number of objects.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
Create_raw()
</frame>
</b>
<frame>
 and 
</frame>
<b>
<frame>
Create_default()
</frame>
</b>
<frame>
 use the default constructor.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
Create_fill()
</frame>
</b>
<frame>
 uses a constructor with the given set of arguments for each object.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
Create_copy()
</frame>
</b>
<frame>
 uses the copy constructor. The arguments are memberwise selected from the provided range of objects.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
Create_cast()
</frame>
</b>
<frame>
 uses the "cast" constructor. The arguments are memberwise selected from the provided range of objects.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
Create_swap()
</frame>
</b>
<frame>
 uses the default constructor and the swap operation to create objects. The arguments for 
the swap are memberwise selected from the provided range of objects.

</frame>
</p>
<frame>



</frame>
<p>
<frame>

The single 
</frame>
<b>
<frame>
Create_swap()
</frame>
</b>
<frame>
 function "creates-swap" a single object.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
ProvideLen()
</frame>
</b>
<frame>
 is used to reallocate an array. It is called if there is no sufficient memory
to extend the array. The 
</frame>
<b>
<frame>
len
</frame>
</b>
<frame>
 is the array length, the 
</frame>
<b>
<frame>
extra_len
</frame>
</b>
<frame>
 is the number of extra
objects to be constructed, the 
</frame>
<b>
<frame>
maxlen
</frame>
</b>
<frame>
 is the allocated length. The length returned
is sufficient to extend the array and at least double of the 
</frame>
<b>
<frame>
maxlen
</frame>
</b>
<frame>
. An exception is thrown in case of
overflow.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
MoveTo()
</frame>
</b>
<frame>
 moves the given range to a new place. The old place becomes a raw memory. 
The range of new objects is returned.

</frame>
</p>
<frame>



</frame>
<p>
<frame>

Other members are inherited from the 
</frame>
<a href="#ArrayAlgoBase" >
<b>
<frame>
ArrayAlgoBase&lt;T&gt;
</frame>
</b>
</a>
<frame>
.

</frame>
</p>
<frame>



</frame>
<h4>
<frame>
ArrayAlgo_pod
</frame>
</h4>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
ArrayAlgo_pod
</frame>
</b>
<frame>
 is the POD variant.

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


template &lt;PODType T&gt;
struct 
</frame>
<span class="Att" >
<frame>
ArrayAlgo_pod
</frame>
</span>
<frame>
 : ArrayAlgoBase_nodtor&lt;T&gt;
 {
  enum PropFlagType
   {
    Default_no_throw = true,
    Copy_no_throw = true,
    
    MoveTo_exist = true
   };
 
  static PtrLen&lt;T&gt; Create_raw(Place&lt;void&gt; place,ulen len);
  
  static PtrLen&lt;T&gt; Create_default(Place&lt;void&gt; place,ulen len);
   
  template &lt;class ... SS&gt;
  static PtrLen&lt;T&gt; Create_fill(Place&lt;void&gt; place,ulen len,SS &amp;&amp; ... ss) requires ( ConstructibleType&lt;T,SS...&gt; ) ;
  
  static PtrLen&lt;T&gt; Create_copy(Place&lt;void&gt; place,ulen len,const T src[]);
  
  template &lt;class S&gt;
  static PtrLen&lt;T&gt; Create_cast(Place&lt;void&gt; place,ulen len,const S src[]) requires ( ConstructibleType&lt;T,const S&gt; ) ;
  
  static PtrLen&lt;T&gt; Create_swap(Place&lt;void&gt; place,ulen len,T objs[]);
   
  //
  //  Single : no-throw
  // 
  
  static T * Create_swap(Place&lt;void&gt; place,T &amp;obj) noexcept;
   
  //
  //  ProvideLen() : double extension
  // 
  
  static ulen ProvideLen(ulen len,ulen maxlen,ulen extra_len);
   
  // 
  //  MoveTo() : no-throw
  //

  static PtrLen&lt;T&gt; MoveTo(T *ptr,ulen len,Place&lt;void&gt; place) noexcept;
 };


</frame>
</pre>
<frame>



</frame>
<p>
<frame>

Flags 
</frame>
<b>
<frame>
Default_no_throw
</frame>
</b>
<frame>
, 
</frame>
<b>
<frame>
Copy_no_throw
</frame>
</b>
<frame>
 and 
</frame>
<b>
<frame>
MoveTo_exist
</frame>
</b>
<frame>
 are all 
</frame>
<b>
<frame>
true
</frame>
</b>
<frame>
.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
Create_raw()
</frame>
</b>
<frame>
 is not using default initialization. It leaves the memory uninitialized.

</frame>
</p>
<frame>



</frame>
<p>
<frame>

Other members are inherited from the 
</frame>
<b>
<frame>
ArrayAlgoBase_nodtor&lt;T&gt;
</frame>
</b>
<frame>
.

</frame>
</p>
<frame>



</frame>
<h4>
<frame>
ArrayAlgo_mini
</frame>
</h4>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
ArrayAlgo_mini
</frame>
</b>
<frame>
 is the mini variant without object moving.
It is assumed only, that the destructor 
</frame>
<b>
<frame>
~T()
</frame>
</b>
<frame>
 is 
</frame>
<b>
<frame>
no-throw
</frame>
</b>
<frame>
. Swap and move are not used.

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


template &lt;class T,class Flags&gt;
struct 
</frame>
<span class="Att" >
<frame>
ArrayAlgo_mini
</frame>
</span>
<frame>
 : ArrayAlgoBase&lt;T&gt;
 {
  enum PropFlagType
   {
    Default_no_throw = Flags::Default_no_throw,
    Copy_no_throw = Flags::Copy_no_throw,
    
    MoveTo_exist = false
   };
 
  static PtrLen&lt;T&gt; Create_raw(Place&lt;void&gt; place,ulen len) requires ( DefaultCtorType&lt;T&gt; ) ;
  
  static PtrLen&lt;T&gt; Create_default(Place&lt;void&gt; place,ulen len) requires ( DefaultCtorType&lt;T&gt; ) ;
   
  template &lt;class ... SS&gt;
  static PtrLen&lt;T&gt; Create_fill(Place&lt;void&gt; place,ulen len,SS &amp;&amp; ... ss) requires ( ConstructibleType&lt;T,SS...&gt; ) ;
  
  static PtrLen&lt;T&gt; Create_copy(Place&lt;void&gt; place,ulen len,const T src[]) requires ( CopyCtorType&lt;T&gt; ) ;
  
  template &lt;class S&gt;
  static PtrLen&lt;T&gt; Create_cast(Place&lt;void&gt; place,ulen len,const S src[]) requires ( ConstructibleType&lt;T,const S&gt; ) ;
 };


</frame>
</pre>
<frame>



</frame>
<p>
<frame>

The flag 
</frame>
<b>
<frame>
MoveTo_exist
</frame>
</b>
<frame>
 is 
</frame>
<b>
<frame>
false
</frame>
</b>
<frame>
.

</frame>
</p>
<frame>



</frame>
<p>
<frame>

Other members are inherited from the 
</frame>
<b>
<frame>
ArrayAlgoBase&lt;T&gt;
</frame>
</b>
<frame>
.

</frame>
</p>
<frame>



</frame>
<p>
<frame>

The following functions: 
</frame>
<b>
<frame>
Create_swap()
</frame>
</b>
<frame>
, 
</frame>
<b>
<frame>
ProvideLen()
</frame>
</b>
<frame>
, 
</frame>
<b>
<frame>
MoveTo()
</frame>
</b>
<frame>
 are omitted.
Array, constructed with this algorithm package, cannot be extended beyond the initial memory allocation length.

</frame>
</p>
<frame>



</frame>
<p>
<frame>

To use this package with the 
</frame>
<b>
<frame>
DynArray
</frame>
</b>
<frame>
 you can use the following type:

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


template &lt;class T&gt;
using 
</frame>
<span class="Att" >
<frame>
MiniDynArray
</frame>
</span>
<frame>
 = DynArray&lt;T,ArrayAlgo_mini&lt;T&gt; &gt; ;


</frame>
</pre>
<frame>



</frame>
<a name="ArrayAlgoBase" >
<h4>
<frame>
ArrayAlgoBase
</frame>
</h4>
</a>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
ArrayAlgoBase
</frame>
</b>
<frame>
 is a common package for all 
</frame>
<b>
<frame>
ArrayAlgo
</frame>
</b>
<frame>
s. 
It has two variants: common and specialized 
</frame>
<b>
<frame>
ArrayAlgoBase_nodtor
</frame>
</b>
<frame>
 for types with the trivial destructor.

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


template &lt;NothrowDtorType T&gt;
struct 
</frame>
<span class="Att" >
<frame>
ArrayAlgoBase
</frame>
</span>
<frame>
 : ArrayAlgoMemBase
 {
  //
  // Guards
  //

  class BuildGuard;

  class CreateGuard;

  class CreateGuard_nothrow;

  template &lt;bool no_throw&gt; class CreateGuardNoThrow;

  //
  //  Create() : clean on throw
  //

  template &lt;CreatorType&lt;T&gt; Creator&gt;
  static PtrLen&lt;T&gt; Create(Place&lt;void&gt; place,ulen len,Creator creator) noexcept( Creator::NoThrow ) ;

  //
  //  single Destroy() : no-throw
  //

  static void Destroy(T *ptr) noexcept;

  //
  //  Destroy() : no-throw
  //

  static void Destroy(T *ptr,ulen len) noexcept;
 };

template &lt;NothrowDtorType T&gt; requires ( TrivDtorType&lt;T&gt; )
struct ArrayAlgoBase&lt;T&gt; : ArrayAlgoBase_nodtor&lt;T&gt; {};


</frame>
</pre>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
Create()
</frame>
</b>
<frame>
 uses the given creator for the object creation. See 
</frame>
<a href="#Creator" >
<frame>
below
</frame>
</a>
<frame>
 about creators.

</frame>
</p>
<frame>



</frame>
<p>
<frame>

Single 
</frame>
<b>
<frame>
Destroy()
</frame>
</b>
<frame>
 destroys the object (but don't free the memory).

</frame>
</p>
<frame>



</frame>
<p>
<frame>

Range 
</frame>
<b>
<frame>
Destroy()
</frame>
</b>
<frame>
 destroys the given range of objects.

</frame>
</p>
<frame>



</frame>
<p>
<frame>

There are four inner "guard" classes. They are used to created a range of objects. Guards are
responsible for the object destruction in case of failure. 

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


class 
</frame>
<span class="Att" >
<frame>
BuildGuard
</frame>
</span>
<frame>
 : NoCopy
 {
   Place&lt;void&gt; place;
   T *ptr;
   ulen len;
     
  public:
     
   explicit BuildGuard(Place&lt;void&gt; place_) : place(place_),ptr(place_),len(0) {}
     
   ~BuildGuard() { if( len ) Destroy(ptr,len); }
     
   Place&lt;void&gt; at() const { return place; }
     
   void operator ++ () { place+=sizeof (T); len++; }
     
   PtrLen&lt;T&gt; disarm() { return Range(ptr,Replace_null(len)); }
 };


</frame>
</pre>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
BuildGuard
</frame>
</b>
<frame>
 is used to create a range of objects. The constructor argument is the place
for the range. It must be properly aligned and the memory space must be large enough to store
the range.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
at()
</frame>
</b>
<frame>
 is the current place for the object creation.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
operator ++ ()
</frame>
</b>
<frame>
 must be called after the successful creation of an object at the current position, 
it moves to the next object position.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
disarm()
</frame>
</b>
<frame>
 is called after the desired number of objects are created. It "disarms" the guard and
returns the created range.

</frame>
</p>
<frame>



</frame>
<p>
<frame>

The 
</frame>
<b>
<frame>
BuildGuard
</frame>
</b>
<frame>
 destructor destroys the created objects. It must be disarmed to prevent the destruction.

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


class 
</frame>
<span class="Att" >
<frame>
CreateGuard
</frame>
</span>
<frame>
 : public BuildGuard
 {
  public:
     
   CreateGuard(Place&lt;void&gt; place,ulen /*final_len*/) : BuildGuard(place) {}
     
   ~CreateGuard() {}
 };


</frame>
</pre>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
CreateGuard
</frame>
</b>
<frame>
 is used for creation a range of objects with the given length. 
Constructor's arguments are: the place of the range and the final number of objects.
The remaining methods are the same as for 
</frame>
<b>
<frame>
BuildGuard
</frame>
</b>
<frame>
. Using 
</frame>
<b>
<frame>
CreateGuard
</frame>
</b>
<frame>

you must create the exact number of objects.

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


class 
</frame>
<span class="Att" >
<frame>
CreateGuard_nothrow
</frame>
</span>
<frame>
 : NoCopy
 {
   Place&lt;void&gt; place;
   T *ptr;
   ulen final_len;
     
  public:
     
   CreateGuard_nothrow(Place&lt;void&gt; place_,ulen final_len_) : place(place_),ptr(place_),final_len(final_len_) {}
     
   Place&lt;void&gt; at() const { return place; }
     
   void operator ++ () { place+=sizeof (T); }
     
   PtrLen&lt;T&gt; disarm() { return Range(ptr,final_len); }
 };


</frame>
</pre>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
CreateGuard_nothrow
</frame>
</b>
<frame>
 is a "no-throw" variant of the 
</frame>
<b>
<frame>
CreateGuard
</frame>
</b>
<frame>
. It is used for the creation of
a range of objects with the given length, if there will be no exceptions during the objects construction.  

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


template &lt;bool no_throw&gt;
class 
</frame>
<span class="Att" >
<frame>
CreateGuardNoThrow
</frame>
</span>
<frame>
 : NoCopy
 {
  public:
     
   CreateGuardNoThrow(Place&lt;void&gt; place,ulen final_len);
    
   ~CreateGuardNoThrow();
 };


</frame>
</pre>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
CreateGuardNoThrow
</frame>
</b>
<frame>
 is the one of the 
</frame>
<b>
<frame>
CreateGuard
</frame>
</b>
<frame>
 and 
</frame>
<b>
<frame>
CreateGuard_nothrow
</frame>
</b>
<frame>
, depending
on the 
</frame>
<b>
<frame>
no_throw
</frame>
</b>
<frame>
 template parameter.

</frame>
</p>
<frame>



</frame>
<p>
<frame>

Below is the implementation of the generic 
</frame>
<b>
<frame>
Create
</frame>
</b>
<frame>
, it uses the 
</frame>
<b>
<frame>
CreateGuardNoThrow
</frame>
</b>
<frame>
.

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


template &lt;CreatorType&lt;T&gt; Creator&gt;
static PtrLen&lt;T&gt; 
</frame>
<span class="Att" >
<frame>
Create
</frame>
</span>
<frame>
(Place&lt;void&gt; place,ulen len,Creator creator) noexcept( Creator::NoThrow )
 {
  CreateGuardNoThrow&lt;Creator::NoThrow&gt; guard(place,len);
    
  FunctorTypeOf&lt;Creator&gt; func(creator);
    
  for(; len ;len--,++guard) func(guard.at());
    
  return guard.disarm();
 }


</frame>
</pre>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
ArrayAlgoBase_nodtor&lt;T&gt;
</frame>
</b>
<frame>
 provides the same set of algorithms, but implemented with respect to destructor triviality.

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


template &lt;TrivDtorType T&gt;
struct 
</frame>
<span class="Att" >
<frame>
ArrayAlgoBase_nodtor
</frame>
</span>
<frame>
 : ArrayAlgoMemBase
 {
  //
  // Guards
  //

  class BuildGuard;

  class CreateGuard;

  class CreateGuard_nothrow;

  template &lt;bool no_throw&gt; class CreateGuardNoThrow;

  //
  //  Create()
  //

  template &lt;CreatorType&lt;T&gt; Creator&gt;
  static PtrLen&lt;T&gt; Create(Place&lt;void&gt; place,ulen len,Creator creator) noexcept( Creator::NoThrow ) ;

  //
  //  single Destroy() : empty
  //

  static void Destroy(T *) noexcept
   {
   }

  //
  //  Destroy() : empty
  //

  static void Destroy(T *,ulen) noexcept
   {
   }
 };


</frame>
</pre>
<frame>



</frame>
<a name="Creator" >
<h4>
<frame>
Creators and Builders
</frame>
</h4>
</a>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
Creator
</frame>
</b>
<frame>
 is a functor, creating objects. It looks like this:

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


class Creator // copy efficient
 {
   ....

  public:

   enum NoThrowFlagType { NoThrow = .... };
  
   Creator(....);
  
   T * operator () (Place&lt;void&gt; place) noexcept(NoThrow);
 };


</frame>
</pre>
<frame>



</frame>
<p>
<frame>

Or like this:

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


class Creator // copy efficient functor initializer
 {
   ....

  public:

   enum NoThrowFlagType { NoThrow = .... };

   Creator(....);

   class FunctorType : NoCopy // heavy functor
    {
      ....

     public:

      explicit FunctorType(Creator init);

      ~FunctorType();

      T * operator () (Place&lt;void&gt; place) noexcept(NoThrow);
    };
 };


</frame>
</pre>
<frame>



</frame>
<p>
<frame>

You may use a 
</frame>
<b>
<frame>
Creator
</frame>
</b>
<frame>
 in a generic array "Creator" constructors and methods.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<a name="Builder" >
<b>
<frame>
Builder
</frame>
</b>
</a>
<frame>
 is a functor, creating a range of objects. It looks like:

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


class Builder // copy efficient
 {
  public:

   Builder(....);

   ulen getLen() const;
   
   PtrLen&lt;T&gt; operator () (Place&lt;void&gt; place) const; // may create up to getLen() objects
 };


</frame>
</pre>
<frame>



</frame>
<p>
<frame>

Or like this:

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


class Builder // copy efficient functor initializer
 {
  public:

   Builder(....);

   ulen getLen() const;

   class FunctorType : NoCopy // heavy functor
    {
      ....

     public:

      explicit FunctorType(Builder init);

      ~FunctorType();

      PtrLen&lt;T&gt; operator () (Place&lt;void&gt; place) const; // may create up to getLen() objects
    };
 };


</frame>
</pre>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
Builder
</frame>
</b>
<frame>
 reports the maximum object number it will create through the method 
</frame>
<b>
<frame>
getLen()
</frame>
</b>
<frame>
. 

</frame>
<b>
<frame>
operator ()
</frame>
</b>
<frame>
 gets the place for the range of 
</frame>
<b>
<frame>
getLen()
</frame>
</b>
<frame>
 elements, it either creates
the range of objects up to this length and returns it, or leaves the memory raw and throws an exception.

</frame>
</p>
<frame>



</frame>
<p>
<frame>

You may use a 
</frame>
<b>
<frame>
Builder
</frame>
</b>
<frame>
 in a generic array "Builder" constructors and methods.

</frame>
</p>
<frame>



</frame>
<p>
<frame>

There are two concepts for creators and builders:

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


template &lt;class Creator,class T&gt;
concept bool 
</frame>
<span class="Att" >
<frame>
CreatorType
</frame>
</span>
<frame>
 = .... ;

template &lt;class Builder,class T&gt;
concept bool 
</frame>
<span class="Att" >
<frame>
BuilderType
</frame>
</span>
<frame>
 = .... ;


</frame>
</pre>
<frame>



</frame>
<h4>
<frame>
Standard creators
</frame>
</h4>
<frame>



</frame>
<p>
<frame>

There is a list of standard creators.

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


/* struct Creator_default&lt;T,bool no_throw&gt; */ 
 
template &lt;class T,bool no_throw&gt; 
struct 
</frame>
<span class="Att" >
<frame>
Creator_default
</frame>
</span>
<frame>

 {
  enum NoThrowFlagType { NoThrow = no_throw };
  
  Creator_default() {}
  
  T * operator () (Place&lt;void&gt; place) noexcept( no_throw )
   {
    return new(place) T();
   }
 };
 
/* struct Creator_fill&lt;T,SS&gt; */ 

template &lt;class T,class ... SS&gt; 
struct 
</frame>
<span class="Att" >
<frame>
Creator_fill
</frame>
</span>
<frame>

 {
  enum NoThrowFlagType { NoThrow = false };
  
  ForwardTuple&lt;SS...&gt; ss;
  
  explicit Creator_fill(SS &amp;&amp; ... ss_) : ss( std::forward&lt;SS&gt;(ss_)... ) {}
  
  T * operator () (Place&lt;void&gt; place)
   {
    return ss.call( [place] (SS &amp;&amp; ... ss) { return new(place) T( std::forward&lt;SS&gt;(ss)... ); } );
   }
 };
 
/* struct Creator_copy&lt;T,bool no_throw&gt; */ 

template &lt;class T,bool no_throw&gt; 
struct 
</frame>
<span class="Att" >
<frame>
Creator_copy
</frame>
</span>
<frame>

 {
  enum NoThrowFlagType { NoThrow = no_throw };
  
  const T *src;
  
  explicit Creator_copy(const T *src_) : src(src_) {}
  
  T * operator () (Place&lt;void&gt; place) noexcept( no_throw )
   {
    return new(place) T(*(src++));
   }
 };
 
/* struct Creator_cast&lt;T,S&gt; */ 
 
template &lt;class T,class S&gt; 
struct 
</frame>
<span class="Att" >
<frame>
Creator_cast
</frame>
</span>
<frame>

 {
  enum NoThrowFlagType { NoThrow = false };
  
  const S *src;
  
  explicit Creator_cast(const S *src_) : src(src_) {}
  
  T * operator () (Place&lt;void&gt; place)
   {
    return new(place) T(*(src++));
   }
 };
 
/* struct Creator_swap&lt;T,Algo&gt; */ 

template &lt;class T,class Algo&gt;
struct 
</frame>
<span class="Att" >
<frame>
Creator_swap
</frame>
</span>
<frame>

 {
  enum NoThrowFlagType { NoThrow = Algo::Default_no_throw };
  
  T *objs;
  
  explicit Creator_swap(T *objs_) : objs(objs_) {}
  
  T * operator () (Place&lt;void&gt; place) noexcept( Algo::Default_no_throw )
   {
    return Algo::Create_swap(place,*(objs++));
   }
 };


</frame>
</pre>
<frame>



</frame>
<h4>
<frame>
Memory management
</frame>
</h4>
<frame>



</frame>
<p>
<frame>

All default algorithm packages inherit the base class 
</frame>
<b>
<frame>
ArrayAlgoMemBase
</frame>
</b>
<frame>
.

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


struct 
</frame>
<span class="Att" >
<frame>
ArrayAlgoMemBase
</frame>
</span>
<frame>

 {
  static void * MemAlloc(ulen len) { return ::CCore::MemAlloc(len); }

  static bool MemExtend(void *mem,ulen len) { return ::CCore::MemExtend(mem,len); }

  static bool MemShrink(void *mem,ulen len) { return ::CCore::MemShrink(mem,len); }
   
  static void MemFree(void *mem) { ::CCore::MemFree(mem); }
 };


</frame>
</pre>
<frame>



</frame>
<p>
<frame>

This class defines default memory-management functions, used by arrays to allocate, extend, shrink and release
memory blocks. If you define a custom algorithm package for your purpose, you may define custom memory
allocation functions with the following semantic.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
MemAlloc()
</frame>
</b>
<frame>
 allocates a memory block of the required length. The block is aligned.
An exception is thrown in case of error.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
MemFree()
</frame>
</b>
<frame>
 releases the previously allocated memory block. The function is never called with
the null argument.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
MemExtend()
</frame>
</b>
<frame>
 tries to extend the previously allocated memory block length to be at least the given argument.
If the return value is 
</frame>
<b>
<frame>
true
</frame>
</b>
<frame>
, then the attempt was successful.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
MemShrink()
</frame>
</b>
<frame>
 shrinks the memory block length to be at least the given argument. 
The return value is never used.

</frame>
</p>
<frame>



</frame>
<h4>
<frame>
Insert/Delete algorithms
</frame>
</h4>
<frame>



</frame>
<p>
<frame>

Insert or delete array elements in the middle of the array are not natural array methods. 
They have a linear complexity.
But sometimes they are necessary.
These algorithms are implemented as free functions.

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


/* del functions */

template &lt;class A&gt;
bool 
</frame>
<span class="Att" >
<frame>
ArrayCopyDel
</frame>
</span>
<frame>
(A &amp;a,ulen ind);

template &lt;class A&gt;
bool 
</frame>
<span class="Att" >
<frame>
ArraySwapDel
</frame>
</span>
<frame>
(A &amp;a,ulen ind);

template &lt;class A&gt;
void 
</frame>
<span class="Att" >
<frame>
ArrayCopyDel_guarded
</frame>
</span>
<frame>
(A &amp;a,ulen ind);

template &lt;class A&gt;
void 
</frame>
<span class="Att" >
<frame>
ArraySwapDel_guarded
</frame>
</span>
<frame>
(A &amp;a,ulen ind);


</frame>
</pre>
<frame>



</frame>
<p>
<frame>

These functions delete an element from the array at the given index. 
The first two return 
</frame>
<b>
<frame>
false
</frame>
</b>
<frame>
 if the index is invalid.
The last two throw an exception in such case. 

</frame>
<b>
<frame>
CopyDel
</frame>
</b>
<frame>
 copies elements, 
</frame>
<b>
<frame>
SwapDel
</frame>
</b>
<frame>
 uses swapping.

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


/* del range functions */

template &lt;class A&gt;
ulen 
</frame>
<span class="Att" >
<frame>
ArrayCopyDelRange
</frame>
</span>
<frame>
(A &amp;array,ulen ind,ulen count);

template &lt;class A&gt;
ulen 
</frame>
<span class="Att" >
<frame>
ArraySwapDelRange
</frame>
</span>
<frame>
(A &amp;array,ulen ind,ulen count);

template &lt;class A&gt;
void 
</frame>
<span class="Att" >
<frame>
ArrayCopyDelRange_guarded
</frame>
</span>
<frame>
(A &amp;array,ulen ind,ulen count);

template &lt;class A&gt;
void 
</frame>
<span class="Att" >
<frame>
ArraySwapDelRange_guarded
</frame>
</span>
<frame>
(A &amp;array,ulen ind,ulen count);


</frame>
</pre>
<frame>



</frame>
<p>
<frame>

These functions delete a range of elements from the array. 
The first two return the count of deleted elements.
The last two throw an exception if the subrange does not fit the array range. 

</frame>
<b>
<frame>
CopyDel
</frame>
</b>
<frame>
 copies elements, 
</frame>
<b>
<frame>
SwapDel
</frame>
</b>
<frame>
 uses swapping.

</frame>
</p>
<frame>




</frame>
<pre>
<frame>


/* ins functions */

template &lt;class A,class ... SS&gt;
bool 
</frame>
<span class="Att" >
<frame>
ArraySwapIns
</frame>
</span>
<frame>
(A &amp;a,ulen ind,SS &amp;&amp; ... ss);

template &lt;class A,class ... SS&gt;
bool 
</frame>
<span class="Att" >
<frame>
ArrayCopyIns
</frame>
</span>
<frame>
(A &amp;a,ulen ind,SS &amp;&amp; ... ss);

template &lt;class A,class ... SS&gt;
auto 
</frame>
<span class="Att" >
<frame>
ArraySwapIns_guarded
</frame>
</span>
<frame>
(A &amp;a,ulen ind,SS &amp;&amp; ... ss);

template &lt;class A,class ... SS&gt;
auto 
</frame>
<span class="Att" >
<frame>
ArrayCopyIns_guarded
</frame>
</span>
<frame>
(A &amp;a,ulen ind,SS &amp;&amp; ... ss);


</frame>
</pre>
<frame>



</frame>
<p>
<frame>

These functions insert an element to the array at the given index. 
The valid index range is 
</frame>
<b>
<frame>
[0,len]
</frame>
</b>
<frame>
, where 
</frame>
<b>
<frame>
len
</frame>
</b>
<frame>
 is the array length. 
The first two cap the index and return 
</frame>
<b>
<frame>
false
</frame>
</b>
<frame>
 if the index is out of range.
The last two throw an exception in such case. They also return the pointer to the inserted object.

</frame>
<b>
<frame>
CopyIns
</frame>
</b>
<frame>
 copies elements, 
</frame>
<b>
<frame>
SwapIns
</frame>
</b>
<frame>
 uses swapping.
Extra arguments are used to call an element constructor.

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


/* ins range functions */

template &lt;class A&gt;
auto 
</frame>
<span class="Att" >
<frame>
ArrayInsRange_default
</frame>
</span>
<frame>
(A &amp;array,ulen ind,ulen count);

template &lt;class A,class ... SS&gt;
auto 
</frame>
<span class="Att" >
<frame>
ArrayInsRange_fill
</frame>
</span>
<frame>
(A &amp;array,ulen ind,ulen count,SS &amp;&amp; ... ss);

template &lt;class A&gt;
auto 
</frame>
<span class="Att" >
<frame>
ArrayInsRange_copy
</frame>
</span>
<frame>
(A &amp;array,ulen ind,ulen count,const T *src); // const T * == decltype(array.getPtr_const())

template &lt;class A&gt;
auto 
</frame>
<span class="Att" >
<frame>
ArrayInsRange_copy
</frame>
</span>
<frame>
(A &amp;array,ulen ind,PtrLen&lt;const T&gt; src); // const T == Meta::PtrObjType&lt;decltype(array.getPtr_const())&gt;

template &lt;class A,class S&gt;
auto 
</frame>
<span class="Att" >
<frame>
ArrayInsRange_cast
</frame>
</span>
<frame>
(A &amp;array,ulen ind,ulen count,const S src[]);

template &lt;class A,class S&gt;
auto 
</frame>
<span class="Att" >
<frame>
ArrayInsRange_cast
</frame>
</span>
<frame>
(A &amp;array,ulen ind,PtrLen&lt;const S&gt; src);

template &lt;class A&gt;
auto 
</frame>
<span class="Att" >
<frame>
ArrayInsRange_swap
</frame>
</span>
<frame>
(A &amp;array,ulen ind,ulen count,T *objs); // T * == decltype(array.getPtr()) 

template &lt;class A&gt;
auto 
</frame>
<span class="Att" >
<frame>
ArrayInsRange_swap
</frame>
</span>
<frame>
(A &amp;array,ulen ind,PtrLen&lt;T&gt; objs); // T == Meta::PtrObjType&lt;decltype(array.getPtr())&gt; 

template &lt;class A&gt;
auto 
</frame>
<span class="Att" >
<frame>
ArrayInsRange
</frame>
</span>
<frame>
(A &amp;array,ulen ind,ulen count,CreatorType&lt;T&gt; creator); // T == Meta::PtrObjType&lt;decltype(array.getPtr())&gt; 

template &lt;class A&gt;
auto 
</frame>
<span class="Att" >
<frame>
ArrayInsRange
</frame>
</span>
<frame>
(A &amp;array,ulen ind,BuilderType&lt;T&gt; builder); // T == Meta::PtrObjType&lt;decltype(array.getPtr())&gt; 


</frame>
</pre>
<frame>



</frame>
<p>
<frame>

All these functions insert a range of elements into the array. 

</frame>
<b>
<frame>
ind
</frame>
</b>
<frame>
 determines the index of insertion.
The range (as 
</frame>
<b>
<frame>
PtrLen
</frame>
</b>
<frame>
) of created elements if returned.
If 
</frame>
<b>
<frame>
ind
</frame>
</b>
<frame>
 exceeds the array length, elements are created at the end of the array.

</frame>
</p>
<frame>



</frame>
<pre>
<frame>


/* ins range prepare functions */

template &lt;class A&gt;
void 
</frame>
<span class="Att" >
<frame>
ArrayInsRangeGuard
</frame>
</span>
<frame>
(A &amp;array,ulen ind);

template &lt;class A&gt;
void 
</frame>
<span class="Att" >
<frame>
ArrayInsRangeFill
</frame>
</span>
<frame>
(A &amp;array,ulen ind);

template &lt;class A&gt;
void 
</frame>
<span class="Att" >
<frame>
ArrayInsRangeFill
</frame>
</span>
<frame>
(A &amp;array,ulen ind,ulen count);


</frame>
</pre>
<frame>



</frame>
<p>
<frame>

These functions can be used to "prepare" the array for an element insertion.
They are intended to be used with conjunction of insertion functions.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
ArrayInsRangeGuard()
</frame>
</b>
<frame>
 throws an exception if 
</frame>
<b>
<frame>
ind
</frame>
</b>
<frame>
 exceeds the array length.

</frame>
</p>
<frame>



</frame>
<p>
<frame>


</frame>
<b>
<frame>
ArrayInsRangeFill()
</frame>
</b>
<frame>
 extends the array if 
</frame>
<b>
<frame>
ind
</frame>
</b>
<frame>
 exceeds the array length to equalize them.
The second variant reserves additional memory behind for further extension by 
</frame>
<b>
<frame>
count
</frame>
</b>
<frame>
 elements.

</frame>
</p>
<frame>



</frame>
<END />
