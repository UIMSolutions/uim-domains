module uim.domains.values.lookups.integers.boolean;

@safe:
import uim.domains;

class DIntegerBooleanValue : DIntegerValue {
  mixin(ValueThis!("IntegerBooleanValue", "int"));
}
mixin(ValueCalls!("IntegerBooleanValue", "int"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}