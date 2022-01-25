module uim.entities.attributes.doubles.decimals.currencies.currency;

@safe:
import uim.entities;

class DOOPAttributeCurrency : DOOPAttributeDecimal {
  this() { super(); }
  this(DOOPAttributeCurrency attribute) { super(attribute); }
  this(Json newValue) { this(); this.value(newValue); }
  this(string newValue) { this(); this.value(newValue); }
  this(double newValue) { this(); this.value(newValue); }
}
auto OOPAttributeCurrency() { return new DOOPAttributeCurrency(); }
auto OOPAttributeCurrency(Json newValue) { return new DOOPAttributeCurrency(newValue); }
auto OOPAttributeCurrency(string newValue) { return new DOOPAttributeCurrency(newValue); }
auto OOPAttributeCurrency(double newValue) { return new DOOPAttributeCurrency(newValue); }

unittest {
  version(test_uim_entities) {  
    // TODO tests
  }
}