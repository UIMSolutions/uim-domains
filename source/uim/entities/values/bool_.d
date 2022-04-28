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

  protected bool _value;
  alias value = DValue.value;
  O value(this O)(bool newValue) {
    this.set(newValue);
    return cast(O)this; 
  }

  void set(bool newValue) {
    _value = newValue;
  }
  override void set(string newValue) {
    _value = (newValue == "true" ? true : false);
  }
  override void set(Json newValue) {
    if (newValue == Json(null)) { 
      _value = false; 
      this.isNull(isNullable ? true : false); }
    else {
      _value = newValue.get!bool;
      this.isNull(false);
    }
  }


  bool opEquals(bool otherValue) {
    return (_value == otherValue);
  }

  int opCmp(bool otherValue) {
    if (_value < otherValue) return -1;
    if (_value == otherValue) return 0;
    return 1;
  }

  bool toBool() { 
    return _value; }

  override Json toJson() { 
    if (isNull) return Json(null); 
    return Json(_value); }

  override string toString() { 
    if (isNull) return null; 
    return to!string(_value); }
}
mixin(ValueCalls!("BooleanValue", "bool"));  

version(test_uim_entities) {
  unittest {    
    assert(BooleanValue(true) == true);
    assert(BooleanValue(false) != true);
    assert(BooleanValue.value(true) == true);
    assert(BooleanValue.value(Json(true)) == true);
    assert(BooleanValue.value(false) != true);
    assert(BooleanValue.value(Json(false)) != true);
}}
