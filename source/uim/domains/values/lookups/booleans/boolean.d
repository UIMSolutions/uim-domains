module uim.domains.values.lookups.booleans.boolean;

@safe:
import uim.domains;

class DBooleanBooleanValue : DBooleanValue {
  mixin(ValueThis!("BooleanBooleanValue", "bool"));
}
mixin(ValueCalls!("BooleanBooleanValue", "bool"));

version(test_uim_domains) {
  unittest {  
    // TODO tests
  }
}