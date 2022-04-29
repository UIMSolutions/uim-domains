module uim.entities.attributeclasses.lookups.booleans.string_;

@safe:
import uim.entities;

class DBooleanStringAttributeClass : DAttributeClass {
  mixin(AttributeClassThis!("BooleanStringAttributeClass"));

  mixin(OProperty!("string[bool]", "lookups"));

  override DValue createValue() {
    return BooleanStringValue(this).isNullable(isNullable);
  }
}
mixin(AttributeClassCalls!("BooleanStringAttributeClass"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}