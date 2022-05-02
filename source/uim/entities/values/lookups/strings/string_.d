module uim.entities.values.lookups.strings.string_;

@safe:
import uim.entities;

class DStringStringValue : DStringValue {
  mixin(ValueThis!("StringStringValue"));
}
mixin(ValueCalls!("StringStringValue"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}