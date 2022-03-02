module uim.entities.attributes.integers.number;

@safe:
import uim.entities;

class DOOPNumberAttribute : DOOPIntegerAttribute {
  mixin(OOPAttributeThis!("OOPNumberAttribute"));
  this(int aValue) { this(); this.value(aValue); }
}
mixin(OOPAttributeCalls!("OOPNumberAttribute"));
auto OOPNumberAttribute(int newValue) { return new DOOPNumberAttribute(newValue); }

unittest {
  version(test_uim_entities) {  
    // TODO tests
      }}