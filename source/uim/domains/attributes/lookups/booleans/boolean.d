module uim.domains.attributes.lookups.booleans.boolean;

@safe:
import uim.domains;

class DBooleanBooleanAttribute : DLookupAttribute {
  mixin(AttributeThis!("BooleanBooleanAttribute"));

  mixin(OProperty!("bool[bool]", "lookups"));

  override DValue createValue() {
    return BooleanBooleanValue(this).isNullable(isNullable);
  }
}
mixin(AttributeCalls!("BooleanBooleanAttribute"));

version(test_uim_domains) {
  unittest {  
    // TODO tests
  }
}