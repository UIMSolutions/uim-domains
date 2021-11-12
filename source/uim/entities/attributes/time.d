module uim.entities.attributes.time;

@safe:
import uim.entities;

class DOOPAttributeTime : DOOPAttribute {
  this() { super(); }
  this(Json json) { this(); this.fromJson(json); }

  mixin(SProperty!("string", "value"));
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
    _value = newValue.get!string; }
  unittest {
    version(uim_entities) {
      // TODO Add tests
      }}

  override string toString() { return to!string(value); }
  unittest {
    version(uim_entities) {
      // TODO Add tests
      }}

  override void fromString(string newValue) { _value = to!string(newValue); }
  unittest {
    version(uim_entities) {
      // TODO Add tests
      }}
}
auto OOPAttributeTime() { return new DOOPAttributeTime(); }
auto OOPAttributeTime(Json json) { return new DOOPAttributeTime(json); }

unittest {
  version(uim_entities) {  
    // TODO tests
  }
}