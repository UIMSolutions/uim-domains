/*********************************************************************************************************
*	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        *
*	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  *
*	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      *
**********************************************************************************************************/
module uim.domains.values;

@safe:
import uim.domains;

public import uim.domains.values.interface_;
public import uim.domains.values.value;
public import uim.domains.values.values;

// Packages
public import uim.domains.values.arrays;
public import uim.domains.values.lookups;
public import uim.domains.values.datetimes;

// Modules
public import uim.domains.values.bool_;
public import uim.domains.values.double_;
public import uim.domains.values.element;
public import uim.domains.values.entity;
public import uim.domains.values.integer;
public import uim.domains.values.long_;
public import uim.domains.values.null_;
public import uim.domains.values.object_;
public import uim.domains.values.string_;
public import uim.domains.values.uuid;

template ValueThis(string name, string datatype = null) { // Name for future releases
  const char[] ValueThis = `  
  this() { super(); }
  this(DAttribute theAttribute) { this().attribute(theAttribute); }
  this(string theValue) { this().value(theValue); }
  this(Json theValue) { this().value(theValue); }
  this(DAttribute theAttribute, string theValue) { this(theAttribute).value(theValue); }
  this(DAttribute theAttribute, Json theValue) { this(theAttribute).value(theValue); }`~
  (datatype ? 
  ` this(`~datatype~` theValue) { this().value(theValue); }
    this(DAttribute theAttribute, `~datatype~` theValue) { this(theAttribute).value(theValue); }`
    : "");
}

template ValueCalls(string name, string datatype = null) {
  const char[] ValueCalls = `  
auto `~name~`() { return new D`~name~`; }
auto `~name~`(DAttribute theAttribute) { return new D`~name~`(theAttribute); }
auto `~name~`(string theValue) { return new D`~name~`(theValue); }
auto `~name~`(Json theValue) { return new D`~name~`(theValue); }
auto `~name~`(DAttribute theAttribute, string theValue) { return new D`~name~`(theAttribute, theValue); }
auto `~name~`(DAttribute theAttribute, Json theValue) { return new D`~name~`(theAttribute, theValue); }
`~
(datatype ? 
` auto `~name~`(`~datatype~` theValue) { return new D`~name~`(theValue); }
  auto `~name~`(DAttribute theAttribute, `~datatype~` theValue) { return new D`~name~`(theAttribute, theValue); }`
  : "");
}