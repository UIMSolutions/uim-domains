module uim.entities.values.lookups.booleans.string_;

@safe:
import uim.entities;

class DBooleanStringValue : DValue {
  mixin(ValueThis!("BooleanStringValue"));
}
mixin(ValueCalls!("BooleanStringValue"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}