module uim.entities.attributes.url;

@safe:
import uim.entities;

class DOOPAttributeUrl : DOOPAttribute {
  this() { super(); }
  this(Json aValue) { this(); this.fromJson(aValue); }
  this(string aValue) { this(); this.fromString(aValue); }

  mixin(SProperty!("string", "value"));
  
  override Json toJson() {
    return Json(value); }
  unittest {
    version(uim_entities) {
      assert(OOPAttributeUrl("Hello").toJson == Json("Hello"));
      assert(OOPAttributeUrl.value("Hello").toJson == Json("Hello"));
      }}

  override void fromJson(Json newValue) {
    _value = newValue.get!string; }
  unittest {
    version(uim_entities) {
      auto attribute = OOPAttributeUrl;
      attribute.fromJson(Json("Hello"));
      assert(attribute.value == "Hello");
      attribute.fromJson(Json("Goodbye"));
      assert(attribute.value == "Goodbye");
      // Init value
      auto attribute = OOPAttributeUrl("Hi");
      assert(attribute.value == "Hi");
      attribute.fromJson(Json("Hello"));
      assert(attribute.value == "Hello");
      attribute.fromJson(Json("Goodbye"));
      assert(attribute.value == "Goodbye");
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
auto OOPAttributeUrl() { return new DOOPAttributeUrl(); }
auto OOPAttributeUrl(Json aValue) { return new DOOPAttributeUrl(aValue); }
auto OOPAttributeUrl(string aValue) { return new DOOPAttributeUrl(aValue); }

unittest {
  version(uim_entities) {
  }  
}