module uim.entities.values.lookups.strings.string_;

@safe:
import uim.entities;

class DStringStringValue : DStringValue {
  mixin(ValueThis!("StringStringValue", "string"));
}
mixin(ValueCalls!("StringStringValue", "string"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}