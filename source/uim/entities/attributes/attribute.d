module uim.entities.attributes.attribute;

@safe:
import uim.entities;

class DOOPAttribute {
  this() { 
    _isNullable = true;
    _isNull = true;
  }
  this(Json json) { 
    this();
    // TODO Json
  }
  this(string value) { 
    this();
    // TODO STring handling 
  }

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
      assert(!OOPAttribute.isNullable); 
      assert(OOPAttribute.isNullable(true).isNull); 
      assert(!OOPAttribute.isNullable(false).isNull); 
      assert(!OOPAttribute.isNullable(true).isNull(false).isNull); 
      }}

  protected bool _isNull;
  bool isNull() { return _isNull; }
  O isNull(this O)(bool aValue) {
    if (isNullable) _isNull = aValue;
    return cast(O)this; }
  unittest {
    version(uim_entities) {
      assert(!OOPAttribute.isNull); 
      // isNullable = false
      assert(!OOPAttribute.isNull(true).isNull); 
      assert(!OOPAttribute.isNull(false).isNull); 
      assert(!OOPAttribute.isNull(true).isNull(false).isNull); 
      // isNullable = true
      assert(OOPAttribute.isNullable(true).isNull(true).isNull); 
      assert(!OOPAttribute.isNullable(true).isNull(false).isNull); 
      assert(!OOPAttribute.isNullable(true).isNull(true).isNull(false).isNull); 
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
  void fromJson(Json newValue) {
  }

  override string toString() { return ""; }
  void fromString(string newValue) {}
}
auto OOPAttribute() { return new DOOPAttribute(); }
auto OOPAttribute(Json json) { return new DOOPAttribute(json); }
auto OOPAttribute(string value) { return new DOOPAttribute(value); }

