module uim.domains.values.lookups.strings.boolean;

@safe:
import uim.domains;

class DStringBooleanValue : DStringValue {
  mixin(ValueThis!("StringBooleanValue"));
}
mixin(ValueCalls!("StringBooleanValue"));

version(test_uim_domains) {
  unittest {  
    // TODO tests
  }
}