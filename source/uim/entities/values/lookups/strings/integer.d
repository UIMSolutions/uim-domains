module uim.entities.values.lookups.strings.integer;

@safe:
import uim.entities;

class DStringIntegerValue : DStringValue {
  mixin(ValueThis!("StringIntegerValue", "string"));
}
mixin(ValueCalls!("StringIntegerValue", "string"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}