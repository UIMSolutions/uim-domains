module uim.entities.attributes.doubles.double_;

@safe:
import uim.entities;

class DOOPAttributeDouble : DOOPAttribute {
  this() { super(); }
  this(DOOPAttributeDouble attribute) { 
    super(attribute);
    this.value(attribute.value); }
  this(Json json) { this(); this.fromJson(json); }

  protected double _value;
  double value() { return _value; }

  override void value(Json newValue) {
    this.value(newValue.get!double); }
  unittest {
    version(test_uim_entities) {
      // TODO Add tests
      }}

  override void value(string newValue) {
    this.value(to!double(newValue)); }
  unittest {
    version(test_uim_entities) {
      // TODO Add tests
      }}

  void value(double newValue) {
    _value = newValue; }
  unittest {
    version(test_uim_entities) {
      // TODO Add tests
      }}

  override Json toJson() {
    return Json(value); }
  unittest {
    version(test_uim_entities) {
      // TODO Add tests
      }}

  override string toString() {
    return to!string(value); }
  unittest {
    version(test_uim_entities) {
      // TODO Add tests
      }}
}
auto OOPAttributeDouble() { return new DOOPAttributeDouble(); }
auto OOPAttributeDouble(Json json) { return new DOOPAttributeDouble(json); }

unittest {
  version(test_uim_entities) {
  }  
}