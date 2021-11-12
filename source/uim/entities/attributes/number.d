module uim.entities.attributes.number;

@safe:
import uim.entities;

class DOOPAttributeNumber : DOOPAttribute {
  this() { super(); }
  this(Json json) { this(); this.fromJson(json); }

  mixin(SProperty!("long", "value"));
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
    _value = newValue.get!long; }
  unittest {
    version(uim_entities) {
      // TODO Add tests
      }}

  override string toString() { return to!string(value); }
  unittest {
    version(uim_entities) {
      // TODO Add tests
      }}

  override void fromString(string newValue) { _value = to!long(newValue); }
  unittest {
    version(uim_entities) {
      // TODO Add tests
      }}
}
auto OOPAttributeNumber() { return new DOOPAttributeNumber(); }
auto OOPAttributeNumber(Json json) { return new DOOPAttributeNumber(json); }

unittest {
  version(uim_entities) {  
    // TODO tests
  }
}