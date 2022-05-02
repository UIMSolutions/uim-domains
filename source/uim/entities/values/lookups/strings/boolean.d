module uim.entities.values.lookups.strings.boolean;

@safe:
import uim.entities;

class DStringBooleanValue : DStringValue {
  mixin(ValueThis!("StringBooleanValue"));
}
mixin(ValueCalls!("StringBooleanValue"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}