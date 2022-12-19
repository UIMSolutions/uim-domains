module uim.domains.attributes.lookups.strings.boolean;

@safe:
import uim.domains;

class DStringBooleanAttribute : DLookupAttribute {
  mixin(AttributeThis!("StringBooleanAttribute"));

  mixin(OProperty!("bool[string]", "lookups"));

  override DValue createValue() {
    return StringBooleanValue(this).isNullable(isNullable);
  }
}
mixin(AttributeCalls!("StringBooleanAttribute"));

version(test_uim_domains) {
  unittest {  
    // TODO tests
  }
}