module uim.entities.attributes.datetimes.datetime;

@safe:
import uim.entities;

class DOOPAttributeDatetime : DOOPAttribute {
  mixin(OOPAttributeThis!("OOPAttributeDatetime"));

/*   this(DOOPAttributeDatetime attribute) { 
    super(attribute);
    this.value(attribute.value); } */

  DateTime _value;
  DateTime value() { return _value; }
   
  override void value(Json newValue) { 
    this.value(newValue.get!string); }

  override void value(string newValue) { 
    this.value(DateTime.fromISOExtString(newValue)); }
  
  void value(DateTime newValue) { 
    _value = newValue; }
  version(test_uim_entities) {
    unittest {
      // TODO Add tests
      }}
  
  override Json toJson() {
    return Json(value.toISOExtString);    
  }
  version(test_uim_entities) {
    unittest {
      // TODO Add tests
      }}

  override string toString() { 
    return value.toISOExtString; }
  version(test_uim_entities) {
    unittest {
      // TODO Add tests
      }}
}
mixin(OOPAttributeCalls!("OOPAttributeDatetime"));

unittest {
  version(test_uim_entities) {  
    // TODO tests
  }
}