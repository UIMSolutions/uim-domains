module uim.domains.values.lookups.booleans.string_;

@safe:
import uim.domains;

class DBooleanStringValue : DValue {
  mixin(ValueThis!("BooleanStringValue"));
}
mixin(ValueCalls!("BooleanStringValue"));

version(test_uim_domains) {
  unittest {  
    // TODO tests
  }
}