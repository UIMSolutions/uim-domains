module uim.entities.attributes.doubles.decimals.decimal;

@safe:
import uim.entities;

class DOOPDecimalAttribute : DOOPAttributeDouble {
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