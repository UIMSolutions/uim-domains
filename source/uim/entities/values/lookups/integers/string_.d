module uim.entities.values.lookups.integers.string_;

@safe:
import uim.entities;

class DIntegerStringValue : DIntegerValue {
  mixin(ValueThis!("IntegerStringValue", "int"));
}
mixin(ValueCalls!("IntegerStringValue", "int"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}