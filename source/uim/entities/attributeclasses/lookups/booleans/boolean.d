module uim.entities.attributeclasses.lookups.booleans.boolean;

@safe:
import uim.entities;

class DBooleanBooleanAttributeClass : DLookupAttributeClass {
  mixin(AttributeClassThis!("BooleanBooleanAttributeClass"));

  mixin(OProperty!("bool[bool]", "lookups"));

  override DValue createValue() {
    return BooleanBooleanValue(this).isNullable(isNullable);
  }
}
mixin(AttributeClassCalls!("BooleanBooleanAttributeClass"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}