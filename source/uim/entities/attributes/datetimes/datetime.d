module uim.entities.attributes.datetimes.datetime;

@safe:
import uim.entities;

class DOOPAttributeDatetime : DOOPAttribute {
  this() { super(); }
  this(DOOPAttributeDatetime attribute) { 
    super(attribute);
    this.value(attribute.value); }
  this(Json json) { this(); this.fromJson(json); }

  DateTime _value;
  DateTime value() { return _value; }
   
  override void value(Json newValue) { 
    this.value(newValue.get!string); }

  override void value(string newValue) { 
    this.value(DateTime.fromISOExtString(newValue)); }
  
  void value(DateTime newValue) { 
    _value = newValue; }
  unittest {
    version(test_uim_entities) {
      // TODO Add tests
      }}
  
  override Json toJson() {
    return Json(value.toISOExtString);    
  }
  unittest {
    version(test_uim_entities) {
      // TODO Add tests
      }}

  override string toString() { 
    return value.toISOExtString; }
  unittest {
    version(test_uim_entities) {
      // TODO Add tests
      }}
}
auto OOPAttributeDatetime() { return new DOOPAttributeDatetime(); }
auto OOPAttributeDatetime(Json json) { return new DOOPAttributeDatetime(json); }

unittest {
  version(test_uim_entities) {  
    // TODO tests
  }
}