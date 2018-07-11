/* BookLab.cpp */
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

#include <inc/BookLab.h>

namespace App {
namespace BookLab {

/* struct LastDefaults */

LastDefaults::LastDefaults(ObjectDomain &domain)
 {
  Create(singleLine,domain);
  Create(doubleLine,domain);
  Create(collapseFormat,domain);
  Create(bulletFormat,domain);
  Create(border,domain);
  Create(textFormat,domain);
  Create(fixedFormat,domain);
  Create(textFormat,domain);
  Create(fixedFormat,domain);
  CreateOf<MultiLine>(placement,domain);
 }

/* struct Doc */

Doc::Doc(ObjectDomain &domain)
 : lastdefs(domain)
 {
 }

/* class Book */

void Book::startDoc()
 {
  if( !doc )
    {
     Create(doc,domain,domain);
    }
 }

Book::Book()
 {
 }

Book::~Book()
 {
 }

void Book::blank()
 {
  doc=Null;

  domain.collect();
 }

void Book::load(StrLen file_name) // TODO
 {
  Used(file_name);
 }

void Book::save(StrLen file_name) const // TODO
 {
  Used(file_name);
 }

} // namespace BookLab
} // namespace App
