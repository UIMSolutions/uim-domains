module uim.entities.attributeclasses.lookups.strings.boolean;

@safe:
import uim.entities;

class DStringBooleanAttributeClass : DLookupAttributeClass {
  mixin(AttributeClassThis!("StringBooleanAttributeClass"));

  mixin(OProperty!("bool[string]", "lookups"));

  override DValue createValue() {
    return StringBooleanValue(this).isNullable(isNullable);
  }
}
mixin(AttributeClassCalls!("StringBooleanAttributeClass"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}