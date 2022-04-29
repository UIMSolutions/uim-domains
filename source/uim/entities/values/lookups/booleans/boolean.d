module uim.entities.values.lookups.booleans.boolean;

@safe:
import uim.entities;

class DBooleanBooleanValue : DBooleanValue {
  mixin(ValueThis!("BooleanBooleanValue", "bool"));
}
mixin(ValueCalls!("BooleanBooleanValue", "bool"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}