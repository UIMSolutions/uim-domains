module uim.entities.values.int_;

@safe:
import uim.entities;

class DIntegerValue : DValue {
  mixin(ValueThis!("IntegerValue", "long"));  

  mixin(OProperty!("long", "value"));

  override void initialize() {
    super.initialize;

    this
      .isInteger(true);
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

  override Json toJson() { 
    if (isNull) return Json(null); 
    return Json(_value); }
  override Json toJsonValue() { return Json(this.value); }

  override string toString() { 
    if (isNull) return "0"; 
    return to!string(_value); }
}
mixin(ValueCalls!("IntegerValue", "long"));  