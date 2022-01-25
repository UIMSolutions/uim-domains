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

  override void value(Json newValue) { 
    this.value(newValue.get!string); }
  unittest {
    version(test_uim_entities) {
      // TODO Add tests
      }}

  override void value(string newValue) { 
    if (newValue.isUUID) this.value(UUID(newValue)); }
  unittest {
    version(test_uim_entities) {
      auto id = randomUUID;
      assert(OOPAttributeUUID(id).value == id);
      assert(OOPAttributeUUID(id.toString).value == id);
      assert(OOPAttributeUUID(Json(id.toString)).value == id);
      }}

  void value(UUID newValue) { 
    _value = newValue; }
  unittest {
    version(test_uim_entities) {
      // TODO Add tests
      }}

  override Json toJson() {
    return Json(value.toString); }
  unittest {
    version(test_uim_entities) {
      auto id = randomUUID;
/*       assert(OOPAttributeUUID(id).toJson == Json(id.toString));
      assert(OOPAttributeUUID.value(id) == Json(id.toString));
 */      }}

  override string toString() { 
    return value.toString; }
  unittest {
    version(test_uim_entities) {
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