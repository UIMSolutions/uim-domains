module uim.entities.attributes.uuid;

@safe:
import uim.entities;

class DOOPAttributeUUID : DOOPAttribute {
  this() { super(); }
  this(Json json) { this(); this.fromJson(json); }
  this(string aValue) { this(); this.value(aValue); }
  this(UUID aValue) { this(); this.value(aValue); }

  mixin(SProperty!("UUID", "value"));
  O value(this O)(string aValue) { 
    if (aValue.isUUID) _value = UUID(aValue);
    return cast(O)this; }
  unittest {
    version(uim_entities) {
      auto id = randomUUID;
      assert(OOPAttributeUUID.value(id).value == id);
      assert(OOPAttributeUUID.value(id.toString).toJson.get!string == id.toString);
      }}
  
  override Json toJson() {
    return Json(value.toString); }
  unittest {
    version(uim_entities) {
      auto id = randomUUID;
      assert(OOPAttributeUUID(id).toJson == Json(id.toString));
      assert(OOPAttributeUUID.value("Hello").toJson == Json("Hello"));
      }}

  override void fromJson(Json newValue) {
    _value = UUID(newValue.get!string); }
  unittest {
    version(uim_entities) {
      // TODO Add tests
      }}

  override string toString() { 
    return value.toString; }
  unittest {
    version(uim_entities) {
      // TODO Add tests
      }}

  override void fromString(string newValue) { 
    _value = newValue.isUUID ? UUID(newValue) : UUID(); }
  unittest {
    version(uim_entities) {
      // TODO Add tests
      }}
}
auto OOPAttributeUUID() { return new DOOPAttributeUUID(); }
auto OOPAttributeUUID(Json json) { return new DOOPAttributeUUID(json); }
auto OOPAttributeUUID(UUID id) { return new DOOPAttributeUUID(id); }
auto OOPAttributeUUID(string aValue) { return new DOOPAttributeUUID(aValue); }

unittest{
  //
}