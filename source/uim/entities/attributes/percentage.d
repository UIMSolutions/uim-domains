module uim.entities.attributes.percentage;

@safe:
import uim.entities;

class DOOPAttributePercentage : DOOPAttribute {
  this() { super(); }
  this(Json json) { this(); this.fromJson(json); }

  mixin(SProperty!("double", "value"));
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
    _value = newValue.get!double; }
  unittest {
    version(uim_entities) {
      // TODO Add tests
      }}

  override string toString() { return to!string(value); }
  unittest {
    version(uim_entities) {
      // TODO Add tests
      }}

  override void fromString(string newValue) { _value = to!double(newValue); }
  unittest {
    version(uim_entities) {
      // TODO Add tests
      }}
}
auto OOPAttributePercentage() { return new DOOPAttributePercentage(); }
auto OOPAttributePercentage(Json json) { return new DOOPAttributePercentage(json); }

unittest {
  version(uim_entities) {  
    // TODO tests
  }
}