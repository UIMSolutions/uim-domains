module uim.domains.values.lookups.integers.integer;

@safe:
import uim.domains;

class DIntegerIntegerValue : DIntegerValue {
  mixin(ValueThis!("IntegerIntegerValue", "int"));
}
mixin(ValueCalls!("IntegerIntegerValue", "int"));

version(test_uim_domains) {
  unittest {  
    // TODO tests
  }
}