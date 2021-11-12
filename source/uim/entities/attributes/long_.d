module uim.entities.attributes.long_;

@safe:
import uim.entities;

class DOOPAttributeLong : DOOPAttribute {
  this() { super(); }
  this(Json aValue) { this(); this.fromJson(aValue); }
  this(string aValue) { this(); this.fromString(aValue); }

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
auto OOPAttributeLong() { return new DOOPAttributeLong(); }
auto OOPAttributeLong(Json json) { return new DOOPAttributeLong(json); }

unittest {
  version(uim_entities) {  
    // TODO tests
  }
}