module uim.entities.attributes.lookups.strings.string_;

@safe:
import uim.entities;

class DStringStringAttribute : DLookupAttribute {
  mixin(AttributeThis!("StringStringAttribute"));
  
  mixin(OProperty!("string[string]", "lookups"));

  override DValue createValue() {
    return StringStringValue(this).isNullable(isNullable);
  }
}
mixin(AttributeCalls!("StringStringAttribute"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}