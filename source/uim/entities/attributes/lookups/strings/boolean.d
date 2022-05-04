module uim.entities.attributes.lookups.strings.boolean;

@safe:
import uim.entities;

class DStringBooleanAttribute : DLookupAttribute {
  mixin(AttributeThis!("StringBooleanAttribute"));

  mixin(OProperty!("bool[string]", "lookups"));

  override DValue createValue() {
    return StringBooleanValue(this).isNullable(isNullable);
  }
}
mixin(AttributeCalls!("StringBooleanAttribute"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}