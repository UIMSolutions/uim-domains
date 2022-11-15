module uim.domains.attributes.lookups.booleans.integer;

@safe:
import uim.domains;

class DBooleanIntegerAttribute : DLookupAttribute {
  mixin(AttributeThis!("BooleanIntegerAttribute"));

  mixin(OProperty!("int[bool]", "lookups"));

  override DValue createValue() {
    return BooleanIntegerValue(this).isNullable(isNullable);
  }
}
mixin(AttributeCalls!("BooleanIntegerAttribute"));

version(test_uim_domains) {
  unittest {  
    // TODO tests
  }
}