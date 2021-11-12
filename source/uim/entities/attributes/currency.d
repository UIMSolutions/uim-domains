module uim.entities.attributes.currency;

@safe:
import uim.entities;

class DOOPAttributeCurrency : DOOPAttribute {
  this() { super(); }
  this(Json aValue) { this(); this.fromJson(aValue); }
  this(string aValue) { this(); this.fromString(aValue); }

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
auto OOPAttributeCurrency() { return new DOOPAttributeCurrency(); }
auto OOPAttributeCurrency(Json json) { return new DOOPAttributeCurrency(json); }

unittest {
  version(uim_entities) {  
    // TODO tests
  }
}