module uim.entities.attributes.attribute;

@safe:
import uim.entities;

class DOOPAttribute : IRegistrable {
  this() { initialize; }
  this(DOOPAttribute attribute) {
    initialize;
    this
    .config(attribute.config)
    .attclass(attribute.attclass)
    .descriptions(attribute.descriptions)
    .ownerId(attribute.ownerId)
    .isNullable(attribute.isNullable)
    .isNull(attribute.isNull); }
  this(Json json) { 
    this();
    // TODO Json
  }
  this(string value) { 
    this();
    // TODO STring handling 
  }

  void initialize() {}

  protected string _registerPath;
  void registerPath(string path) { _registerPath = path; }
  string registerPath() { return _registerPath; }

  void value(Json newValue) {} // Interface for data
  void value(string newValue) {} // Interface for data 

  mixin(SProperty!("Json", "config"));
  /// Attclass from which it inherits

  mixin(SProperty!("DOOPAttclass", "attclass"));
  unittest {
    version(uim_entities) {
      // TODO Add tests
      }}

  mixin(SProperty!("STRINGAA", "descriptions"));
  unittest {
    version(uim_entities) {
      // TODO Add tests
      }}

  mixin(SProperty!("UUID", "ownerId"));
  unittest {
    version(uim_entities) {
      // TODO Add tests
      }}

  mixin(SProperty!("bool", "isNullable"));
  unittest {
    version(uim_entities) {
      /* assert(!OOPAttribute.isNullable); 
      assert(OOPAttribute.isNullable(true).isNull(true).isNull); 
      assert(!OOPAttribute.isNullable(false).isNull(true).isNull); 
      assert(!OOPAttribute.isNullable(true).isNull(false).isNull); 
      assert(!OOPAttribute.isNullable(false).isNull(false).isNull);  */
      }}

  string type() { return ""; }

  bool isBoolean() { return false; }
  bool booleanValue() { return false; } // default
  bool boolValue() { return booleanValue; } // shorter

  bool isInteger() { return false; }
  int integerValue() { return false; } // default
  int intValue() { return integerValue; } // shorter

  bool isString() { return false; }
  string stringValue() { return ""; } // default
  string strValue() { return stringValue; } // shorter

  bool isArray() { return false; }
  bool isEntity() { return false; }

  protected bool _isNull;
  bool isNull() { return _isNull; }
  O isNull(this O)(bool aValue) {
    if (isNullable) _isNull = aValue;
    return cast(O)this; }
  unittest {
    version(uim_entities) {
      // assert(!OOPAttribute.isNull); 
      // isNullable = false
/*       assert(!OOPAttribute.isNull(true).isNull); 
      assert(!OOPAttribute.isNull(false).isNull); 
      assert(!OOPAttribute.isNull(true).isNull(false).isNull); 
      // isNullable = true
      assert(OOPAttribute.isNullable(true).isNull(true).isNull); 
      assert(!OOPAttribute.isNullable(true).isNull(false).isNull); 
      assert(!OOPAttribute.isNullable(true).isNull(true).isNull(false).isNull);  */
      }}

  O set(this O)(Json aValue) {
    fromJson(aValue);
    return cast(O)this;
  }
  O set(this O)(string aValue) {
    fromString(aValue);
    return cast(O)this;
  }

  T get(T:Json)() {
    return toJson(aValue);
  }
  T get(T:string)() {
    return toString(aValue);
  }

  Json toJson() {
    return Json(null);    
  }
  O fromJson(this O)(Json newValue) {
    this.value(newValue);
    return cast(O)this; }

  DOOPAttribute copy() { return new DOOPAttribute; }

  override string toString() { return "DOOPAttribute"; }

  O fromString(this O)(string newValue) {
    this.value(newValue);
    return cast(O)this; }
}

