module uim.entities.attributes.string_;

@safe:
import uim.entities;

class DOOPAttributeString : DOOPAttribute {
  this() { super(); }
  this(Json aValue) { this(); this.fromJson(aValue); }
  this(string aValue) { this(); this.fromString(aValue); }

  mixin(SProperty!("string", "value"));
  
  override Json toJson() {
    return Json(value); }
  unittest {
    version(uim_entities) {
      assert(OOPAttributeString("Hello").toJson == Json("Hello"));
      assert(OOPAttributeString.value("Hello").toJson == Json("Hello"));
      }}

  override void fromJson(Json newValue) {
    _value = newValue.get!string; }
  unittest {
    version(uim_entities) {
      auto attribute = OOPAttributeString;
      attribute.fromJson(Json("Hello"));
      assert(attribute.value == "Hello");
      assert(attribute.value("Goodbye").value == "Goodbye");
      }}

  override string toString() { return value; }
  unittest {
    version(uim_entities) {
      // TODO Add tests
      }}

  override void fromString(string newValue) { _value = newValue; }
  unittest {
    version(uim_entities) {
      // TODO Add tests
      }}
}
auto OOPAttributeString() { return new DOOPAttributeString(); }
auto OOPAttributeString(Json aValue) { return new DOOPAttributeString(aValue); }
auto OOPAttributeString(string aValue) { return new DOOPAttributeString(aValue); }

unittest {
  version(uim_entities) {
  }  
}