module uim.entities.attributes.integers.timestamp;

@safe:
import uim.entities;

class DOOPTimestampAttribute : DOOPLongAttribute {
  mixin(OOPAttributeThis!("OOPTimestampAttribute", "timestamp"));

  this(long newValue) { this(); this.value(newValue); }
}
mixin(OOPAttributeCalls!("OOPTimestampAttribute"));

auto OOPTimestampAttribute(long newValue) { return new DOOPTimestampAttribute(newValue); }

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}