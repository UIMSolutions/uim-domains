module uim.entities.attributes.integers.long_;

@safe:
import uim.entities;

class DOOPAttributeLong : DOOPAttribute {
  mixin(OOPAttributeThis!("OOPAttributeLong"));

  this(long aValue) { this(); this.value(aValue); }

  protected long _value;

  long value() { return _value; }
  
  override void value(Json newValue) {
    this.value(newValue.get!long); }

  override void value(string newValue) {
    this.value(to!long(newValue)); }

  void value(long newValue) {
    _value = newValue; }

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
mixin(OOPAttributeCalls!("OOPAttributeLong"));

auto OOPAttributeLong(long newValue) { return new DOOPAttributeLong(newValue); }

unittest {
  version(test_uim_entities) {  
    // TODO tests
      }}