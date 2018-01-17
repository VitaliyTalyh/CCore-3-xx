include <Mandelbrot.style.ddl>

scope Pages {

Text text1 = { { {'Mandelbrot scope'} } , &fmt_h1 , &align_h1 } ;

Text text2 = { { {'Introduction'} } , &fmt_h2 , &align_h2 } ;

Text text3 = { { {'This'},{'is'},{'a'},{'large',&fmt_b},{'text',&fmt_i},{'word1',&fmt_u},{'word2',&fmt_u} } } ;

Page page1 = { 'Manual' ,
  {
   { &text1 },
   { &text2 },
   { &text3 }
  }
 };

} // scope Pages

Book Data = { 'Mandelbrot scope' , {&Pages#page1} , Pages#Back , Pages#Fore } ;