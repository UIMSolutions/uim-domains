module uim.entities.values.date_;

@safe:
import uim.entities;
import std.datetime.date;

class DDateValue : DValue {
  mixin(ValueThis!("DateValue", "Date"));  

  protected Date _value;  
  alias value = DValue.value;
  O value(this O)(Date newValue) {
    this.set(newValue);
    return cast(O)this; 
  }
  Date value() {
    return _value; 
  }
  override void initialize() {
    super.initialize;

    this
      .isDate(true);
  }

  void set(Date newValue) {
    _value = newValue;
  }
  override void set(string newValue) {
    _value = Date(string);
  }
  override void set(Json newValue) {
    if (newValue == Json(null)) { 
      this
        .value(false) 
        .isNull(isNullable ? true : false); }
    else {
      this
        .value(newValue.get!string)
        .isNull(false);
    }
  }

  override Json toJson() { 
    if (isNull) return Json(null);
    auto json = Json.emptyObject;
    // json["key"] =  
    return Json(this.value.toISOExtString); }

  override string toString() { 
    if (isNull) return null; 
    return this.value.toISOExtString; }
}
mixin(ValueCalls!("DateValue", "Date"));  

version(test_uim_entities) {
  unittest {    
    assert(DateValue.value("100").toDate == 100);
    assert(DateValue.value(Json(100)).toDate == 100);
    assert(DateValue.value("200").toDate != 100);
    assert(DateValue.value(Json(200)).toDate != 100);

    assert(DateValue.value("100").toString == "100");
    assert(DateValue.value(Json(100)).toString == "100");
    assert(DateValue.value("200").toString != "100");
    assert(DateValue.value(Json(200)).toString != "100");

    assert(DateValue.value("100").toJson == Json(100));
    assert(DateValue.value(Json(100)).toJson == Json(100));
    assert(DateValue.value("200").toJson != Json(100));
    assert(DateValue.value(Json(200)).toJson != Json(100));
}} 