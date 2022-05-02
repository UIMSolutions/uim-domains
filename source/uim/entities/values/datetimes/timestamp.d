module uim.entities.values.datetimes.timestamp;

@safe:
import uim.entities;

class DTimestampValue : DValue {
  mixin(ValueThis!("TimestampValue", "SysTime"));  

  protected SysTime _value;  
  alias value = DValue.value;
  O value(this O)(SysTime newValue) {
    this.set(newValue);
    return cast(O)this; 
  }
  SysTime value() {
    return _value; 
  }
  override void initialize() {
    super.initialize;

    this
      .isTimestamp(true);
  }

  // Hooks for setting 
  protected void set(SysTime newValue) {
    _value = newValue; 
  }  

  override protected void set(string newValue) {
    if (newValue is null) { 
      this
        .isNull(isNullable ? true : false) 
        .value(SysTime()); }
    else {
      this
        .isNull(false);
        // .value(fromISOExtString(newValue)); 
    }
  }  

  override protected void set(Json newValue) {
    if (newValue == Json(null)) { 
      _value = SysTime(); 
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
mixin(ValueCalls!("TimestampValue", "SysTime"));  

version(test_uim_entities) {
  unittest {    
    // TODO
}} 