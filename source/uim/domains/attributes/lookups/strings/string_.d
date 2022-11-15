module uim.domains.attributes.lookups.strings.string_;

@safe:
import uim.domains;

class DStringStringAttribute : DLookupAttribute {
  mixin(AttributeThis!("StringStringAttribute"));
  
  mixin(OProperty!("string[string]", "lookups"));

  override DValue createValue() {
    return StringStringValue(this).isNullable(isNullable);
  }
}
mixin(AttributeCalls!("StringStringAttribute"));

version(test_uim_domains) {
  unittest {  
    // TODO tests
  }
}