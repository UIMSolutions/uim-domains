module uim.domains.values.datetimes.datetime_;

@safe:
import uim.domains;

class DDatetimeValue : DValue {
  mixin(ValueThis!("DatetimeValue", "DateTime"));  

  protected DateTime _value;  
  alias value = DValue.value;
  O value(this O)(DateTime newValue) {
    this.set(newValue);
    return cast(O)this; 
  }
  DateTime value() {
    return _value; 
  }
  override void initialize() {
    super.initialize;

    this
      .isDatetime(true);
  }

  // Hooks for setting 
  protected void set(DateTime newValue) {
    _value = newValue; 
  }  

  override protected void set(string newValue) {
    if (newValue is null) { 
      this.isNull(isNullable ? true : false); 
      this.value(DateTime()); }
    else {
      this.isNull(false);
      this.value(DateTime.fromISOExtString(newValue)); 
    }
  }  

  override protected void set(Json newValue) {
    if (newValue == Json(null)) { 
      _value = DateTime(); 
      this.isNull(isNullable ? true : false); }
    else {
      this
        .value(newValue.get!string)
        .isNull(false);
    }
  }

  override Json toJson() { 
    if (isNull) return Json(null); 
    return Json(this.value.toISOExtString); }

  override string toString() { 
    if (isNull) return null; 
    return this.value.toISOExtString; }
}
mixin(ValueCalls!("DatetimeValue", "DateTime"));  

version(test_uim_entities) {
  unittest {    
    assert(DatetimeValue.value("100").toDatetime == 100);
    assert(DatetimeValue.value(Json(100)).toDatetime == 100);
    assert(DatetimeValue.value("200").toDatetime != 100);
    assert(DatetimeValue.value(Json(200)).toDatetime != 100);

    assert(DatetimeValue.value("100").toString == "100");
    assert(DatetimeValue.value(Json(100)).toString == "100");
    assert(DatetimeValue.value("200").toString != "100");
    assert(DatetimeValue.value(Json(200)).toString != "100");

    assert(DatetimeValue.value("100").toJson == Json(100));
    assert(DatetimeValue.value(Json(100)).toJson == Json(100));
    assert(DatetimeValue.value("200").toJson != Json(100));
    assert(DatetimeValue.value(Json(200)).toJson != Json(100));
}} 