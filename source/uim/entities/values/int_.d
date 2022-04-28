module uim.entities.values.int_;

@safe:
import uim.entities;

class DIntegerValue : DValue {
  mixin(ValueThis!("IntegerValue", "long"));  

  protected long _value;  
  alias value = DValue.value;
  O value(this O)(long newValue) {
    this.set(newValue);
    return cast(O)this; 
  }
  long value() {
    return _value; 
  }
  override void initialize() {
    super.initialize;

    this
      .isInteger(true);
  }

  // Hooks for setting 
  protected void set(long newValue) {
    _value = newValue; 
  }  

  override protected void set(string newValue) {
    if (newValue is null) { 
      this.isNull(isNullable ? true : false); 
      _value = 0; }
    else {
      this.isNull(false);
      _value = to!long(newValue); 
    }
  }  

  override protected void set(Json newValue) {
    if (newValue == Json(null)) { 
      _value = 0; 
      this.isNull(isNullable ? true : false); }
    else {
      _value = newValue.get!long;
      this.isNull(false);
    }
  }

  bool opEquals(long aValue) {
    return (_value == aValue);
  }

  long opCall() {
    return _value; 
  }

  O opCall(this O)(long newValue) { 
    _value = newValue;
    return cast(O)this; }
  version(test_uim_entities) {
    unittest {    
      auto value = IntegerValue;
      value(100);
    }
  }  

  long toLong() { 
    if (isNull) return 0; 
    return _value; }

  override Json toJson() { 
    if (isNull) return Json(null); 
    return Json(_value); }

  override string toString() { 
    if (isNull) return "0"; 
    return to!string(_value); }
}
mixin(ValueCalls!("IntegerValue", "long"));  

version(test_uim_entities) {
  unittest {    
    assert(IntegerValue.value("100").toLong == 100);
    assert(IntegerValue.value(Json(100)).toLong == 100);
    assert(IntegerValue.value("200").toLong != 100);
    assert(IntegerValue.value(Json(200)).toLong != 100);

    assert(IntegerValue.value("100").toString == "100");
    assert(IntegerValue.value(Json(100)).toString == "100");
    assert(IntegerValue.value("200").toString != "100");
    assert(IntegerValue.value(Json(200)).toString != "100");

    assert(IntegerValue.value("100").toJson == Json(100));
    assert(IntegerValue.value(Json(100)).toJson == Json(100));
    assert(IntegerValue.value("200").toJson != Json(100));
    assert(IntegerValue.value(Json(200)).toJson != Json(100));
}} 