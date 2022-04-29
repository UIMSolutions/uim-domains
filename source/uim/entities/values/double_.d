module uim.entities.values.double_;

@safe:
import uim.entities;

class DDoubleValue : DValue {
  mixin(ValueThis!("DoubleValue", "double"));  

  protected double _value;  
  alias value = DValue.value;
  O value(this O)(double newValue) {
    this.set(newValue);
    return cast(O)this; 
  }
  double value() {
    return _value; 
  }
  override void initialize() {
    super.initialize;

    this
      .isDouble(true);
  }

  // Hooks for setting 
  protected void set(double newValue) {
    _value = newValue; 
  }  

  override protected void set(string newValue) {
    if (newValue is null) { 
      this.isNull(isNullable ? true : false); 
      _value = 0; }
    else {
      this.isNull(false);
      _value = to!double(newValue); 
    }
  }  

  override protected void set(Json newValue) {
    if (newValue == Json(null)) { 
      _value = 0; 
      this.isNull(isNullable ? true : false); }
    else {
      _value = newValue.get!double;
      this.isNull(false);
    }
  }

  bool opEquals(double aValue) {
    return (_value == aValue);
  }

  double opCall() {
    return _value; 
  }

  O opCall(this O)(double newValue) { 
    _value = newValue;
    return cast(O)this; }
  version(test_uim_entities) {
    unittest {    
      auto value = DoubleValue;
      value(100);
    }
  }  

  double toDouble() { 
    if (isNull) return 0; 
    return _value; }

  override Json toJson() { 
    if (isNull) return Json(null); 
    return Json(_value); }

  override string toString() { 
    if (isNull) return "0"; 
    return to!string(_value); }
}
mixin(ValueCalls!("DoubleValue", "double"));  

version(test_uim_entities) {
  unittest {    
    assert(DoubleValue.value("100").toDouble == 100);
    assert(DoubleValue.value(Json(100)).toDouble == 100);
    assert(DoubleValue.value("200").toDouble != 100);
    assert(DoubleValue.value(Json(200)).toDouble != 100);

    assert(DoubleValue.value("100").toString == "100");
    assert(DoubleValue.value(Json(100)).toString == "100");
    assert(DoubleValue.value("200").toString != "100");
    assert(DoubleValue.value(Json(200)).toString != "100");

    assert(DoubleValue.value("100").toJson == Json(100));
    assert(DoubleValue.value(Json(100)).toJson == Json(100));
    assert(DoubleValue.value("200").toJson != Json(100));
    assert(DoubleValue.value(Json(200)).toJson != Json(100));
}} 