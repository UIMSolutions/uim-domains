module uim.entities.attributes.uuids.uuid;

@safe:
import uim.entities;

class DOOPAttributeUUID : DOOPAttribute {
  this() { super(); }
  this(Json newValue) { this(); this.fromJson(newValue); }
  this(string newValue) { this(); this.value(newValue); }
  this(UUID newValue) { this(); this.value(newValue); }

  protected UUID _value;
  UUID value() { return _value; }
  version(test_uim_entities) {
    unittest {
      auto id = randomUUID;
      assert(OOPAttributeUUID.value(id).value == id);
      assert(OOPAttributeUUID.value(id.toString).value == id);
      assert(OOPAttributeUUID.value(id.toString).stringValue == id.toString);
      }}

  override void value(Json newValue) { 
    if (newValue == Json(null)) this.value(null);
    switch(newValue.type) {
      case Json.Type.string: 
        auto str = newValue.get!string;
        if (str.isUUID) this.value(UUID(str)); 
        break;
      default: break;
    }
  }
  version(test_uim_entities) {
    unittest {
      auto id = randomUUID;
      }}

  override void value(string newValue) { 
    if (newValue.isUUID) this.value(UUID(newValue)); }
  version(test_uim_entities) {
    unittest {
      auto id = randomUUID;
      assert(OOPAttributeUUID(id).value == id);
      assert(OOPAttributeUUID(id.toString).value == id);
      assert(OOPAttributeUUID(Json(id.toString)).value == id);
      }}

  void value(UUID newValue) { 
    _value = newValue; }
  version(test_uim_entities) {
    unittest {
      // TODO Add tests
      }}

  override Json toJson() {
    return Json(value.toString); }
  version(test_uim_entities) {
    unittest {
      auto id = randomUUID;
/*       assert(OOPAttributeUUID(id).toJson == Json(id.toString));
      assert(OOPAttributeUUID.value(id) == Json(id.toString));
 */      }}

  override string toString() { 
    return value.toString; }
  version(test_uim_entities) {
    unittest {
      // TODO Add tests
      }}
}
auto OOPAttributeUUID() { return new DOOPAttributeUUID(); }
auto OOPAttributeUUID(Json json) { return new DOOPAttributeUUID(json); }
auto OOPAttributeUUID(UUID id) { return new DOOPAttributeUUID(id); }
auto OOPAttributeUUID(string aValue) { return new DOOPAttributeUUID(aValue); }

unittest {
  version(test_uim_entities) {
    // TODO Add tests
    }}