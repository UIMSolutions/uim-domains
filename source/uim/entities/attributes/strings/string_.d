module uim.entities.attributes.strings.string_;

@safe:
import uim.entities;

class DOOPAttributeString : DOOPAttribute {
  this() { super(); }
  this(DOOPAttributeString attribute) { 
    super(attribute); this.value(attribute.value); }
  this(Json aValue) { this(); this.value(aValue); }
  this(string aValue) { this(); this.value(aValue); }

  protected string _value;
  string value() { return _value; }

  override void value(Json newValue) {
    this.value(newValue.get!string); } 

  override void value(string newValue) {
    _value = newValue; } 
  unittest {
    version(test_uim_entities) {
      auto attribute = OOPAttributeUrl;
      attribute.fromJson(Json("Hello"));
      assert(attribute.value == "Hello");
      attribute.fromJson(Json("Goodbye"));
      assert(attribute.value == "Goodbye");
      // Init value
      attribute = OOPAttributeUrl("Hi");
      assert(attribute.value == "Hi");
      attribute.fromJson(Json("Hello"));
      assert(attribute.value == "Hello");
      attribute.fromJson(Json("Goodbye"));
      assert(attribute.value == "Goodbye");
      }}

  override Json toJson() {
    return Json(this.value); }
  unittest {
    version(test_uim_entities) {
      assert(OOPAttributeString("Hello").toJson == Json("Hello"));
//      assert(OOPAttributeString.value("Hello").toJson == Json("Hello"));
      }}

  override string toString() { return this.value; }
  unittest {
    version(test_uim_entities) {
      // TODO Add tests
      }}
}
auto OOPAttributeString() { return new DOOPAttributeString(); }
auto OOPAttributeString(Json aValue) { return new DOOPAttributeString(aValue); }
auto OOPAttributeString(string aValue) { return new DOOPAttributeString(aValue); }

unittest {
  version(test_uim_entities) {
  }  
}