module uim.domains.values.lookups.strings.string_;

@safe:
import uim.domains;

class DStringStringValue : DStringValue {
  mixin(ValueThis!("StringStringValue"));
}
mixin(ValueCalls!("StringStringValue"));

version(test_uim_domains) {
  unittest {  
    // TODO tests
  }
}