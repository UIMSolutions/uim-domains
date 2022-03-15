module uim.entities.attributes.uuids.uuid;

@safe:
import uim.entities;

class DOOPUUIDAttribute : DOOPAttribute {
  this() { super(); }
  this(Json newValue) { this(); this.fromJson(newValue); }
  this(string newValue) { this(); this.value(newValue); }
  this(UUID newValue) { this(); this.value(newValue); }

  protected UUID _value;
  UUID value() { return _value; }
  DOOPAttribute value(UUID newValue) { 
    _value = newValue; 
    return this;
  }
  version(test_uim_entities) {
    unittest {
      // TODO Add tests
      }}
  version(test_uim_entities) {
    unittest {
      auto id = randomUUID;
      auto uuidAttribute = OOPUUIDAttribute;

      uuidAttribute.value(id); 
      assert(uuidAttribute.value == id);
      assert(uuidAttribute.stringValue == id.toString);

      uuidAttribute.value(id.toString); 
      assert(uuidAttribute.value == id);
      assert(uuidAttribute.stringValue == id.toString);
      }}

  override DOOPAttribute value(Json newValue) { 
    if (newValue == Json(null)) this.value(UUID());
    switch(newValue.type) {
      case Json.Type.string: 
        auto str = newValue.get!string;
        if (str.isUUID) this.value(UUID(str)); 
        break;
      default: break;
    }
    return this;
  }
  version(test_uim_entities) {
    unittest {
      auto id = randomUUID;
      }}

  override DOOPAttribute value(string newValue) { 
    if (newValue.isUUID) this.value(UUID(newValue)); 
    return this;
  }
  version(test_uim_entities) {
    unittest {
      auto id = randomUUID;
      assert(OOPUUIDAttribute(id).value == id);
      assert(OOPUUIDAttribute(id.toString).value == id);
      assert(OOPUUIDAttribute(Json(id.toString)).value == id);
      }}

  override string stringValue() { return value.toString; }
  override Json jsonValue() { return Json(stringValue); }

  override Json toJson() {
    return Json(value.toString); }
  version(test_uim_entities) {
    unittest {
      auto id = randomUUID;
/*       assert(OOPUUIDAttribute(id).toJson == Json(id.toString));
      assert(OOPUUIDAttribute.value(id) == Json(id.toString));
 */      }}

  override string toString() { 
    return value.toString; }
  version(test_uim_entities) {
    unittest {
      // TODO Add tests
      }}
}
auto OOPUUIDAttribute() { return new DOOPUUIDAttribute(); }
auto OOPUUIDAttribute(Json json) { return new DOOPUUIDAttribute(json); }
auto OOPUUIDAttribute(UUID id) { return new DOOPUUIDAttribute(id); }
auto OOPUUIDAttribute(string aValue) { return new DOOPUUIDAttribute(aValue); }

version(test_uim_entities) {
  unittest {
    // TODO Add tests
    }}