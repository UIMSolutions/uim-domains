module uim.entities.attributes.entities.entity;

@safe:
import uim.entities;

class DOOPAttributeEntity : DOOPAttribute {
  this() { super(); }
  this(DOOPAttributeEntity attribute) { 
    super(attribute); this.value(attribute.value); }
  this(Json aValue) { this(); this.value(aValue); }
  this(string aValue) { this(); this.value(aValue); }
  this(DOOPEntity aValue) { this(); this.value(aValue); }

  protected DOOPEntity _value;
  DOOPEntity value() { return _value; }

  override void value(Json newValue) {
    // TODO this.value(newValue.get!string); 
    } 

  override void value(string newValue) {
    // TODO _value = newValue; 
    } 
  unittest {
    version(test_uim_entities) {
      // TODO Add tests      
      }}

  void value(DOOPEntity newValue) {
    _value = newValue; } 
  unittest {
    version(test_uim_entities) {
      // TODO Add tests
      }}

  override bool isEntity() { return true; }
  unittest {
    version(test_uim_entities) {
      // TODO Add tests
      }}
      
  override bool isNull() { return (_value is null); }
  unittest {
    version(test_uim_entities) {
      // TODO Add tests
      }}

  override Json toJson() {
    if (_value) return _value.toJson;
    return Json(null); }
  unittest {
    version(test_uim_entities) {
      // TODO assert(OOPAttributeEntity("Hello").toJson == Json("Hello"));
//      assert(OOPAttributeEntity.value("Hello").toJson == Json("Hello"));
      }}

  override string toString() { 
    if (_value) return ""; // TODO
    return null; }
  unittest {
    version(test_uim_entities) {
      // TODO Add tests
      }}
}
auto OOPAttributeEntity() { return new DOOPAttributeEntity(); }
auto OOPAttributeEntity(Json aValue) { return new DOOPAttributeEntity(aValue); }
auto OOPAttributeEntity(string aValue) { return new DOOPAttributeEntity(aValue); }
auto OOPAttributeEntity(DOOPEntity aValue) { return new DOOPAttributeEntity(aValue); }

unittest {
  version(test_uim_entities) {
    // TODO
    }}