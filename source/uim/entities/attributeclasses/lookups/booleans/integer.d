module uim.entities.attributeclasses.lookups.booleans.integer;

@safe:
import uim.entities;

class DBooleanIntegerAttributeClass : DLookupAttributeClass {
  mixin(AttributeClassThis!("BooleanIntegerAttributeClass"));

  mixin(OProperty!("int[bool]", "lookups"));

  override DValue createValue() {
    return BooleanIntegerValue(this).isNullable(isNullable);
  }
}
mixin(AttributeClassCalls!("BooleanIntegerAttributeClass"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}