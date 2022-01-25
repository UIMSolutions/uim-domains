module uim.entities.attributes.doubles.decimals.decimal;

@safe:
import uim.entities;

class DOOPAttributeDecimal : DOOPAttributeDouble {
  this() { super(); }
  this(DOOPAttributeDecimal attribute) { super(attribute); }
  this(Json newValue) { this(); this.value(newValue); }
  this(string newValue) { this(); this.value(newValue); }
  this(double newValue) { this(); this.value(newValue); }
}
auto OOPAttributeDecimal() { return new DOOPAttributeDecimal(); }
auto OOPAttributeDecimal(Json newValue) { return new DOOPAttributeDecimal(newValue); }
auto OOPAttributeDecimal(string newValue) { return new DOOPAttributeDecimal(newValue); }
auto OOPAttributeDecimal(double newValue) { return new DOOPAttributeDecimal(newValue); }

unittest {
  version(test_uim_entities) {  
    // TODO tests
  }
}