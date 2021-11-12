module uim.entities.attributes.datetime;

@safe:
import uim.entities;

class DOOPAttributeDatetime : DOOPAttribute {
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
auto OOPAttributeDatetime() { return new DOOPAttributeDatetime(); }
auto OOPAttributeDatetime(Json json) { return new DOOPAttributeDatetime(json); }

unittest {
  version(uim_entities) {  
    // TODO tests
  }
}