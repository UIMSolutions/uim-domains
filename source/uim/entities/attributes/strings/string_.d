module uim.entities.attributes.strings.string_;

@safe:
import uim.entities;

class DOOPStringAttribute : DOOPAttribute {
  mixin(OOPAttributeThis!("OOPStringAttribute", "string"));

  protected string _value;
  override void value(Json newValue) {
    if (newValue == Json(null)) this.value(null);
    switch(newValue.type) {
      case Json.Type.string: this.value(newValue.get!string); break;
      default: break;
    }
  } 
  override void value(string newValue) {
    _value = newValue; } 
  version(test_uim_entities) {
    unittest {
      auto attribute = OOPStringAttribute;
      attribute.fromJson(Json("Hello"));
      assert(attribute.value == "Hello");
      attribute.fromJson(Json("Goodbye"));
      assert(attribute.value == "Goodbye");
      // Init value
      attribute = OOPStringAttribute("Hi");
      assert(attribute.value == "Hi");
      attribute.fromJson(Json("Hello"));
      assert(attribute.value == "Hello");
      attribute.fromJson(Json("Goodbye"));
      assert(attribute.value == "Goodbye");
  }}

  override void initialize() {
    super.initialize;

    this
      .isCharacter(true)
      .isBig(true)
      .isArray(true);
  }

  override Json jsonValue() {
    return Json(_value); }
  override string stringValue() {  
    return _value; }

  version(test_uim_entities) {
    unittest {
      assert(OOPStringAttribute("Hello").jsonValue == Json("Hello"));
//      assert(OOPStringAttribute.value("Hello").toJson == Json("Hello"));
      }}

  override string toString() { return stringValue; }
  version(test_uim_entities) {
    unittest {
      // TODO Add tests
      }}
}
mixin(OOPAttributeCalls!("OOPStringAttribute"));

unittest {
  version(test_uim_entities) {
  }  
}