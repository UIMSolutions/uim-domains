module uim.entities.values.lookups.integers.integer;

@safe:
import uim.entities;

class DIntegerIntegerValue : DIntegerValue {
  mixin(ValueThis!("IntegerIntegerValue", "int"));
}
mixin(ValueCalls!("IntegerIntegerValue", "int"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}