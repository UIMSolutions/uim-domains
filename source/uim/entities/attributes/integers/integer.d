module uim.entities.attributes.integers.integer;

@safe:
import uim.entities;

class DOOPAttributeInteger : DOOPAttribute {
  this() { super(); }
  this(DOOPAttributeInteger attribute) { 
    super(attribute);
    this.value(attribute.value); }
  this(Json aValue) { this(); this.value(aValue); }
  this(string aValue) { this(); this.value(aValue); }
  this(long aValue) { this(); this.value(aValue); }

  protected long _value;

  long value() { return _value; }
  
  override void value(Json newValue) {
    this.value(newValue.get!long); }

  override void value(string newValue) {
    this.value(to!long(newValue)); }

  void value(long newValue) {
    _value = newValue; }

  unittest {
    version(uim_entities) {
      // TODO Add tests
      }}
  
  override Json toJson() {
    return Json(value);    
  }
  unittest {
    version(uim_entities) {
      // TODO Add tests
      }}

  override string toString() { return to!string(value); }
  unittest {
    version(uim_entities) {
      // TODO Add tests
      }}
}
auto OOPAttributeInteger() { return new DOOPAttributeInteger(); }
auto OOPAttributeInteger(Json newValue) { return new DOOPAttributeInteger(newValue); }
auto OOPAttributeInteger(string newValue) { return new DOOPAttributeInteger(newValue); }
auto OOPAttributeInteger(long newValue) { return new DOOPAttributeInteger(newValue); }

unittest {
  version(uim_entities) {  
    // TODO tests
      }}