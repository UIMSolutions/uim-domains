module uim.entities.attributeclasses.lookups.strings.integer;

@safe:
import uim.entities;

class DStringIntegerAttributeClass : DLookupAttributeClass {
  mixin(AttributeClassThis!("StringIntegerAttributeClass"));

  mixin(OProperty!("int[string]", "lookups"));

  override DValue createValue() {
    return StringIntegerValue(this).isNullable(isNullable);
  }
}
mixin(AttributeClassCalls!("StringIntegerAttributeClass"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}