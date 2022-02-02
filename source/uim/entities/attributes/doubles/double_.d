module uim.entities.attributes.doubles.double_;

@safe:
import uim.entities;

class DOOPAttributeDouble : DOOPAttribute {
  mixin(OOPAttributeThis!("OOPAttributeDouble"));

  protected double _value;
  double value() { return _value; }

  override DOOPAttribute value(Json newValue) {
    if (newValue == Json(null)) this.value(0.0);
    switch(newValue.type) {
      case Json.Type.float_: 
        this.value(newValue.get!double);
        break;
      default: break;
    }
    return this;
  }  
  version(test_uim_entities) {
    unittest {
      auto doubleAttribute = OOPAttributeDouble;
      doubleAttribute.value(Json(1.0));
      assert(doubleAttribute.value == 1.0);
  }}

  override DOOPAttribute value(string newValue) {
    this.value(to!double(newValue)); 
    return this;
  }
  version(test_uim_entities) {
    unittest {
      auto doubleAttribute = OOPAttributeDouble;
      doubleAttribute.value("1.0");
      assert(doubleAttribute.value == 1.0);
  }}

  DOOPAttribute value(double newValue) {
    _value = newValue; 
    return this;
  }
  version(test_uim_entities) {
    unittest {
      auto doubleAttribute = OOPAttributeDouble;
      doubleAttribute.value(1.0);
      assert(doubleAttribute.value == 1.0);
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