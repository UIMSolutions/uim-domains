/*********************************************************************************************************
*	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        *
*	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  *
*	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      *
**********************************************************************************************************/
module uim.domains.values.integer;

@safe:
import uim.domains;

class DIntegerValue : DValue {
  mixin(ValueThis!("IntegerValue", "int"));  

  protected int _value;  
  alias value = DValue.value;
  O value(this O)(int newValue) {
    this.set(newValue);
    return cast(O)this; 
  }
  int value() {
    return _value; 
  }
  override void initialize() {
    super.initialize;

    this
      .isInteger(true);
  }

  // Hooks for setting 
  protected void set(int newValue) {
    _value = newValue; 
  }  

  override protected void set(string newValue) {
    if (newValue is null) { 
      this.isNull(isNullable ? true : false); 
      _value = 0; }
    else {
      this.isNull(false);
      _value = to!int(newValue); 
    }
  }  

  override protected void set(Json newValue) {
    if (newValue == Json(null)) { 
      _value = 0; 
      this.isNull(isNullable ? true : false); }
    else {
      _value = newValue.get!int;
      this.isNull(false);
    }
  }

  bool opEquals(int aValue) {
    return (_value == aValue);
  }

  int opCall() {
    return _value; 
  }

  O opCall(this O)(int newValue) { 
    _value = newValue;
    return cast(O)this; }
  version(test_uim_domains) {
    unittest {    
      auto value = IntegerValue;
      value(100);
    }
  }  

  int toLong() { 
    if (isNull) return 0; 
    return _value; }

  override Json toJson() { 
    if (isNull) return Json(null); 
    return Json(_value); }

  override string toString() { 
    if (isNull) return "0"; 
    return to!string(_value); }
}
mixin(ValueCalls!("IntegerValue", "int"));  

version(test_uim_domains) {
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