module uim.domains.values.value;

@safe:
import uim.domains;

class DValue : IValue {
  this() { initialize; }
  this(DAttribute theAttribute) { this().attribute(theAttribute); }

  void initialize() {}

  mixin(OProperty!("DAttribute", "attribute"));
  mixin(OProperty!("bool", "isString"));
  mixin(OProperty!("bool", "isInteger"));
  mixin(OProperty!("bool", "isBoolean"));
  mixin(OProperty!("bool", "isDouble"));
  mixin(OProperty!("bool", "isLong"));
  mixin(OProperty!("bool", "isDate"));
  mixin(OProperty!("bool", "isTime"));
  mixin(OProperty!("bool", "isDatetime"));
  mixin(OProperty!("bool", "isNullable"));
  mixin(OProperty!("bool", "isObject"));
  mixin(OProperty!("bool", "isArray"));
  mixin(OProperty!("bool", "isEntity"));
  mixin(OProperty!("bool", "isUUID"));
  mixin(OProperty!("bool", "isTimestamp"));
  
  private bool _isNull;
  bool isNull() {
    if (isNullable) return isNull; 
    return false; }
  O isNull(this O)(bool newNull) {
    if (isNullable) _isNull = newNull; 
    return cast(O)this; }

  // Set with string value
  protected void set(string newValue) {}
  protected void set(Json newValue) {}

  O value(this O)(string newValue) {
    this.set(newValue);
    return cast(O)this;
  }

  O value(this O)(Json newValue) {
    this.set(newValue);
    return cast(O)this;
  }

  Json toJson() {
    debug writeln("In DValue:toJson"); 
    return Json(null); }
  override string toString() { return null; }
  void fromString(string newValue) { }
}

version(test_uim_entities) {
  unittest {   
    auto value = new DValue;
    assert(!value.isNull);
    assert(!value.isString);
    assert(!value.isInteger);
    assert(!value.isBoolean);
    assert(!value.isDouble);
    assert(!value.isNullable);
    assert(!value.isObject);
    assert(!value.isArray);
}}
