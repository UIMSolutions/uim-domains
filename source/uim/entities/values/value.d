module uim.entities.values.value;

@safe:
import uim.entities;

class DValue : IValue {
  this() { initialize; }
  this(DAttributeClass theAttributeClass) { this().attributeClass(theAttributeClass); }

  void initialize() {}

  mixin(OProperty!("DAttributeClass", "attributeClass"));
  mixin(OProperty!("bool", "isString"));
  mixin(OProperty!("bool", "isInteger"));
  mixin(OProperty!("bool", "isBoolean"));
  mixin(OProperty!("bool", "isDouble"));
  mixin(OProperty!("bool", "isNullable"));
  mixin(OProperty!("bool", "isObject"));
  mixin(OProperty!("bool", "isArray"));
  
  private bool _isNull;
  bool isNull() {
    if (isNullable) return isNull; 
    return false; }
  O isNull(this O)(bool newNull) {
    if (isNullable) _isNull = newNull; 
    return cast(O)this; }
  
  Json toJson() { return Json(null); }
  Json toJsonValue() { return Json(null); }
  Json toJsonObj() {
    auto result = Json.emptyObject;
    
    return result; }
  override string toString() { return null; }
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
