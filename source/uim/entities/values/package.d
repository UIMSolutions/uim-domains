module uim.entities.values;

@safe:
import uim.entities;

public import uim.entities.values.interface_;
public import uim.entities.values.value;
public import uim.entities.values.values;

// Packages
public import uim.entities.values.arrays;
public import uim.entities.values.lookups;
public import uim.entities.values.datetimes;

// Modules
public import uim.entities.values.bool_;
public import uim.entities.values.double_;
public import uim.entities.values.entity;
public import uim.entities.values.integer;
public import uim.entities.values.long_;
public import uim.entities.values.null_;
public import uim.entities.values.object_;
public import uim.entities.values.string_;
public import uim.entities.values.uuid;

template ValueThis(string name, string datatype = null) { // Name for future releases
  const char[] ValueThis = `  
  this() { super(); }
  this(DAttributeClass theAttributeClass) { this().attributeClass(theAttributeClass); }
  this(string theValue) { this().value(theValue); }
  this(Json theValue) { this().value(theValue); }
  this(DAttributeClass theAttributeClass, string theValue) { this(theAttributeClass).value(theValue); }
  this(DAttributeClass theAttributeClass, Json theValue) { this(theAttributeClass).value(theValue); }`~
  (datatype ? 
  ` this(`~datatype~` theValue) { this().value(theValue); }
    this(DAttributeClass theAttributeClass, `~datatype~` theValue) { this(theAttributeClass).value(theValue); }`
    : "");
}

template ValueCalls(string name, string datatype = null) {
  const char[] ValueCalls = `  
auto `~name~`() { return new D`~name~`; }
auto `~name~`(DAttributeClass theAttributeClass) { return new D`~name~`(theAttributeClass); }
auto `~name~`(string theValue) { return new D`~name~`(theValue); }
auto `~name~`(Json theValue) { return new D`~name~`(theValue); }
auto `~name~`(DAttributeClass theAttributeClass, string theValue) { return new D`~name~`(theAttributeClass, theValue); }
auto `~name~`(DAttributeClass theAttributeClass, Json theValue) { return new D`~name~`(theAttributeClass, theValue); }
`~
(datatype ? 
` auto `~name~`(`~datatype~` theValue) { return new D`~name~`(theValue); }
  auto `~name~`(DAttributeClass theAttributeClass, `~datatype~` theValue) { return new D`~name~`(theAttributeClass, theValue); }`
  : "");
}