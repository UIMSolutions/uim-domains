module uim.entities.attributes.entities.entity;

@safe:
import uim.entities;

class DOOPEntityAttribute : DOOPAttribute {
  mixin(OOPAttributeThis!("OOPEntityAttribute", "entity"));
  this(DOOPEntity aValue) { this(); this.value(aValue); }

  protected DOOPEntity _value;
  DOOPEntity value() { return _value; }

  override DOOPAttribute value(Json newValue) {
    // TODO this.value(newValue.get!string); 
    return this;
    } 

  override DOOPAttribute value(string newValue) {
    // TODO _value = newValue; 
    return this;
    } 
  version(test_uim_entities) {
    unittest {
      // TODO Add tests      
      }}

  DOOPAttribute value(DOOPEntity newValue) {
    _value = newValue; 
    return this;
  } 
  version(test_uim_entities) {
    unittest {
      // TODO Add tests
      }}

  override bool isEntity() { return true; }
  version(test_uim_entities) {
    unittest {
      // TODO Add tests
      }}
      
  override bool isNull() { return (_value is null); }
  version(test_uim_entities) {
    unittest {
      // TODO Add tests
      }}

  override Json toJson() {
    if (_value) return _value.toJson;
    return Json(null); }
  version(test_uim_entities) {
    unittest {
      // TODO assert(OOPEntityAttribute("Hello").toJson == Json("Hello"));
//      assert(OOPEntityAttribute.value("Hello").toJson == Json("Hello"));
      }}

  override string toString() { 
    if (_value) return ""; // TODO
    return null; }
  version(test_uim_entities) {
    unittest {
      // TODO Add tests
      }}
}
mixin(OOPAttributeCalls!("OOPEntityAttribute"));
auto OOPEntityAttribute(DOOPEntity aValue) { return new DOOPEntityAttribute(aValue); }

version(test_uim_entities) {
  unittest {
    // TODO
    }}