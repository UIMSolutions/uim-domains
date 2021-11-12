module uim.entities.attributes.integer;

@safe:
import uim.entities;

class DOOPAttributeInteger : DOOPAttribute {
  this() { super(); }
  this(Json json) { this(); this.fromJson(json); }

  mixin(SProperty!("int", "value"));
  unittest {
    version(uim_entities) {
      // TODO Add tests
      }}
  
  override Json toJson() {
    return Json(value);    
  }
  unittest {
    version(uim_entities) {
      // TODO Add tests
      }}

  override void fromJson(Json newValue) {
    this.value(newValue.get!int); }
  unittest {
    version(uim_entities) {
      // TODO Add tests
      }}

  override string toString() { return to!string(value); }
  unittest {
    version(uim_entities) {
      // TODO Add tests
      }}

  override void fromString(string newValue) { _value = to!int(newValue); }
  unittest {
    version(uim_entities) {
      // TODO Add tests
      }}
}
auto OOPAttributeInteger() { return new DOOPAttributeInteger(); }
auto OOPAttributeInteger(Json json) { return new DOOPAttributeInteger(json); }

unittest {
  version(uim_entities) {  
    // TODO tests
  }
}