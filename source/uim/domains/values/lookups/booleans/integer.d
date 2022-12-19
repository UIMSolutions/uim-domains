module uim.domains.values.lookups.booleans.integer;

@safe:
import uim.domains;

class DBooleanIntegerValue : DBooleanValue {
  mixin(ValueThis!("BooleanIntegerValue"));
}
mixin(ValueCalls!("BooleanIntegerValue"));

version(test_uim_domains) {
  unittest {  
    // TODO tests
  }
}