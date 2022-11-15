module uim.domains.values.bool_;

@safe:
import uim.domains;

class DBooleanValue : DValue {
  mixin(ValueThis!("BooleanValue", "bool"));  

  override void initialize() {
    super.initialize;

    this
      .isBoolean(true);
  }

  @property int get() {
      return value;
  }
  alias get this;

  O opCall(this O)(bool newValue) { this.value(newValue); return cast(O)this; }

  protected bool _value;
  alias value = DValue.value;
  O value(this O)(bool newValue) {
    this.set(newValue);
    return cast(O)this; 
  }
  bool value() {
    return _value; 
  }

  void set(bool newValue) {
    _value = newValue;
  }
  override void set(string newValue) {
    _value = (newValue.toLower == "true") || (newValue.toLower == "on") || (newValue.toLower == "1"); 
  }
  override void set(Json newValue) {
    if (newValue == Json(null)) { 
      this
        .value(false) 
        .isNull(isNullable ? true : false); }
    else {
      this
        .value(newValue.get!bool)
        .isNull(false);
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
    if (this.isNull) return Json(null); 
    return Json(this.value); }

  override string toString() { 
    if (isNull) return null; 
    return to!string(this.value); }
}
mixin(ValueCalls!("BooleanValue", "bool"));  

version(test_uim_domains) {
  unittest {    
    assert(BooleanValue(true) == true);
    assert(BooleanValue(false) != true);
    assert(BooleanValue.value(true) == true);
    assert(BooleanValue.value(Json(true)) == true);
    assert(BooleanValue.value(false) != true);
    assert(BooleanValue.value(Json(false)) != true);

    auto booleanValue = BooleanValue;

    booleanValue.value("true");
    assert(booleanValue.value);

    booleanValue.value("false");
    assert(!booleanValue.value);

    booleanValue.value("on");
    assert(booleanValue.value);

    booleanValue.value("off");
    assert(!booleanValue.value);

    booleanValue.value("1");
    assert(booleanValue.value);

    booleanValue.value("0");
    assert(!booleanValue.value);

    booleanValue.value(true);
    assert(booleanValue.fromString(booleanValue.toString).value);
    assert(booleanValue.fromJson(booleanValue.toJson).value);

    booleanValue.value(false);
    assert(!booleanValue.fromString(booleanValue.toString).value);
    assert(!booleanValue.fromJson(booleanValue.toJson).value);
}}
