module uim.entities.attributeclasses.lookups.strings.string_;

@safe:
import uim.entities;

class DStringStringAttributeClass : DLookupAttributeClass {
  mixin(AttributeClassThis!("StringStringAttributeClass"));
  
  mixin(OProperty!("string[string]", "lookups"));

  override DValue createValue() {
    return StringStringValue(this).isNullable(isNullable);
  }
}
mixin(AttributeClassCalls!("StringStringAttributeClass"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}