module uim.entities.attributes.integers.integer;

@safe:
import uim.entities;

class DOOPIntegerAttribute : DOOPAttribute {
  mixin(OOPAttributeThis!("OOPIntegerAttribute"));

  this(int aValue) { this(); this.value(aValue); }

  protected int _value;
  int value() { return _value; }
  
  override DOOPAttribute value(Json newValue) {
    if (newValue == Json(null)) this.value(0);
    switch(newValue.type) {
      case Json.Type.int_: 
        this.value(newValue.get!int);
        break;
      default: break;
    }
    return this;
  }
  override DOOPAttribute value(string newValue) {
    this.value(to!int(newValue)); 
    return this;
  }

  DOOPAttribute value(int newValue) {
    _value = newValue; 
    return this;
  }

  version(test_uim_entities) {
    unittest {
      // TODO Add tests
      }}
  
  override Json toJson() {
    return Json(value);    
  }
  version(test_uim_entities) {
    unittest {
      // TODO Add tests
      }}

  override string toString() { return to!string(value); }
  version(test_uim_entities) {
    unittest {
      // TODO Add tests
      }}
}
mixin(OOPAttributeCalls!("OOPIntegerAttribute"));

auto OOPIntegerAttribute(int newValue) { return new DOOPIntegerAttribute(newValue); }

unittest {
  version(test_uim_entities) {  
    // TODO tests
      }}