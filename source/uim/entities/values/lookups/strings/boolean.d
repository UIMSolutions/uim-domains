module uim.entities.values.lookups.strings.boolean;

@safe:
import uim.entities;

class DStringBooleanValue : DStringValue {
  mixin(ValueThis!("StringBooleanValue", "string"));
}
mixin(ValueCalls!("StringBooleanValue", "string"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}