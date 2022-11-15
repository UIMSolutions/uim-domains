module uim.domains.values.lookups.strings.integer;

@safe:
import uim.domains;

class DStringIntegerValue : DStringValue {
  mixin(ValueThis!("StringIntegerValue"));
}
mixin(ValueCalls!("StringIntegerValue"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}