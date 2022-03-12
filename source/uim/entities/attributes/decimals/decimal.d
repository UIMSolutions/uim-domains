module uim.entities.attributes.decimals.decimal;

@safe:
import uim.entities;

class DOOPDecimalAttribute : DOOPDoubleAttribute {
  mixin(OOPAttributeThis!("OOPDecimalAttribute"));
  this(double newValue) { this(); this.value(newValue); }
}
mixin(OOPAttributeCalls!("OOPDecimalAttribute"));
auto OOPDecimalAttribute(double newValue) { return new DOOPDecimalAttribute(newValue); }

unittest {
  version(test_uim_entities) {  
    // TODO tests
  }
}