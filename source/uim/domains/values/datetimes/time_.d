module uim.domains.values.datetimes.time_;

@safe:
import uim.domains;

class DTimeValue : DValue {
  mixin(ValueThis!("TimeValue", "TimeOfDay"));  

  protected TimeOfDay _value;  
  alias value = DValue.value;
  O value(this O)(TimeOfDay newValue) {
    this.set(newValue);
    return cast(O)this; 
  }
  TimeOfDay value() {
    return _value; 
  }
  override void initialize() {
    super.initialize;

    this
      .isTime(true);
  }

  // Hooks for setting 
  protected void set(TimeOfDay newValue) {
    _value = newValue; 
  }  

  override protected void set(string newValue) {
    if (newValue is null) { 
      this
        .isNull(isNullable ? true : false) 
        .value(TimeOfDay()); }
    else {
      this
        .isNull(false);
        // .value(fromISOExtString(newValue)); 
    }
  }  

  override protected void set(Json newValue) {
    if (newValue == Json(null)) { 
      _value = TimeOfDay(); 
      this.isNull(isNullable ? true : false); }
    else {
      // _value = newValue.get!string.fromISOExtString;
      this.isNull(false);
    }
  }

  override Json toJson() { 
    if (isNull) return Json(null); 
    return Json(this.value.toISOExtString); }

  override string toString() { 
    if (isNull) return null; 
    return this.value.toISOExtString; }
}
mixin(ValueCalls!("TimeValue", "TimeOfDay"));  

version(test_uim_domains) {
  unittest {    
    assert(TimeValue.value("100").toTime == 100);
    assert(TimeValue.value(Json(100)).toTime == 100);
    assert(TimeValue.value("200").toTime != 100);
    assert(TimeValue.value(Json(200)).toTime != 100);

    assert(TimeValue.value("100").toString == "100");
    assert(TimeValue.value(Json(100)).toString == "100");
    assert(TimeValue.value("200").toString != "100");
    assert(TimeValue.value(Json(200)).toString != "100");

    assert(TimeValue.value("100").toJson == Json(100));
    assert(TimeValue.value(Json(100)).toJson == Json(100));
    assert(TimeValue.value("200").toJson != Json(100));
    assert(TimeValue.value(Json(200)).toJson != Json(100));
}} 