module uim.entities.values.lookups.booleans.integer;

@safe:
import uim.entities;

class DBooleanIntegerValue : DBooleanValue {
  mixin(ValueThis!("BooleanIntegerValue"));
}
mixin(ValueCalls!("BooleanIntegerValue"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}