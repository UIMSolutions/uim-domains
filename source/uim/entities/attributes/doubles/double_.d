module uim.entities.attributes.doubles.double_;

@safe:
import uim.entities;

class DOOPAttributeDouble : DOOPAttribute {
  mixin(OOPAttributeThis!("OOPAttributeDouble"));

/*   this(DOOPAttributeDouble attribute) { 
    super(attribute);
    this.value(attribute.value); } */

  protected double _value;
  double value() { return _value; }

  override void value(Json newValue) {
    this.value(newValue.get!double); }
  version(test_uim_entities) {
    unittest {
      // TODO Add tests
      }}

  override void value(string newValue) {
    this.value(to!double(newValue)); }
  version(test_uim_entities) {
    unittest {
      // TODO Add tests
      }}

  void value(double newValue) {
    _value = newValue; }
  version(test_uim_entities) {
    unittest {
      // TODO Add tests
      }}

  override void initialize() {
    super.initialize;

    this
      .isFloatingPoint(true)
      .isBig(true);
  }

  override Json jsonValue() {
    return Json(value); }
  version(test_uim_entities) {
    unittest {
      assert(OOPAttributeDouble.value(1.1).jsonValue.get!double == 1.1);
  }}

  override string stringValue() {
    return to!string(value); }
  version(test_uim_entities) {
    unittest {
      // TODO Add tests
      }}
}
mixin(OOPAttributeCalls!("OOPAttributeDouble"));

unittest {
  version(test_uim_entities) {
  }  
}