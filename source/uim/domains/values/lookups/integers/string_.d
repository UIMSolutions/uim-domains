module uim.domains.values.lookups.integers.string_;

@safe:
import uim.domains;

class DIntegerStringValue : DIntegerValue {
  mixin(ValueThis!("IntegerStringValue", "int"));
}
mixin(ValueCalls!("IntegerStringValue", "int"));

version(test_uim_domains) {
  unittest {  
    // TODO tests
  }
}