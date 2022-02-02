module uim.entities.attributes.integers.long_;

@safe:
import uim.entities;

class DOOPLongAttribute : DOOPAttribute {
  mixin(OOPAttributeThis!("OOPLongAttribute"));

  this(long aValue) { this(); this.value(aValue); }

  // value setget of long attribute
  protected long _value;
  long value() { return _value; }
  DOOPAttribute value(long newValue) { _value = newValue; return this; }

  // value setget of OOPAttribute
  override DOOPAttribute value(Json newValue) {
    if (newValue == Json(null)) this.value(0);
    switch(newValue.type) {
      case Json.Type.int_: 
        this.value(newValue.get!long);
        break;
      default: break;
    }
    return this;
  }
  version(test_uim_entities) {
    unittest {
      auto longAttribute = OOPLongAttribute;
      assert(longAttribute.value != 1000);

      longAttribute.value(Json(1000));
      assert(longAttribute.value == 1000);

      longAttribute.value(Json(null));
      assert(longAttribute.value == 0);
  }}

  override DOOPAttribute value(string newValue) {
    this.value(to!long(newValue)); 
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
mixin(OOPAttributeCalls!("OOPLongAttribute"));

auto OOPLongAttribute(long newValue) { return new DOOPLongAttribute(newValue); }

unittest {
  version(test_uim_entities) {  
    // TODO tests
      }}