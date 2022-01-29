module uim.entities.attributes.doubles.decimals.decimal;

@safe:
import uim.entities;

class DOOPAttributeDecimal : DOOPAttributeDouble {
  mixin(OOPAttributeThis!("OOPAttributeDecimal"));

  this(double newValue) { this(); this.value(newValue); }
}
mixin(OOPAttributeCalls!("OOPAttributeDecimal"));
auto OOPAttributeDecimal(double newValue) { return new DOOPAttributeDecimal(newValue); }

unittest {
  version(test_uim_entities) {  
    // TODO tests
  }
}