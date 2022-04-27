module uim.entities.values.bool_;

@safe:
import uim.entities;

class DBooleanValue : DValue {
  mixin(ValueThis!("BooleanValue", "bool"));  

  override void initialize() {
    super.initialize;

    this
      .isBoolean(true);
  }

  mixin(OProperty!("bool", "value"));

  O value(this O)(string newValue) {
    this.value(newValue == "true");
    return cast(O)this;
  }

  version(test_uim_entities) {
    unittest {    
      assert(BooleanValue.value("true").value);
      assert(!BooleanValue.value("false").value);
  }}

  O value(this O)(long newValue) {
    this.value(newValue > 0);
    return cast(O)this;
  }
  version(test_uim_entities) {
    unittest {    
      assert(BooleanValue.value(1).value);
      assert(!BooleanValue.value(0).value);
  }}

  version(test_uim_entities) {
    unittest {    
      assert(BooleanValue(true).value);
      assert(!BooleanValue(false).value);

      assert(BooleanValue.value(true).value);
      assert(!BooleanValue.value(false).value);
  }}

  bool opCall() { return _value; } 
  O opCall(this O)(bool newValue) { 
    _value = newValue;
    return cast(O)this; }
  O opCall(this O)(Json newValue) { 
    if (newValue.type = Json.Type.string) _value = newValue.get!string;
    return cast(O)this; }

  bool opEquals(bool otherValue) {
    return (_value == otherValue);
  }

  int opCmp(bool otherValue) {
    if (_value < otherValue) return -1;
    if (_value == otherValue) return 0;
    return 1;
  }

  version(test_uim_entities) {
    unittest {    
      assert(BooleanValue(true) == true);
  }}

  override Json toJson() { 
    if (isNull) return Json(null); 
    return Json(_value); }
  override Json toJsonValue() { return Json(this.value); }

  override string toString() { 
    if (isNull) return null; 
    return to!string(_value); }

  override void fromString(string newValue) { 
    this.value(newValue);
  }
}
mixin(ValueCalls!("BooleanValue", "bool"));  

version(test_uim_entities) {
  unittest {  
}}
