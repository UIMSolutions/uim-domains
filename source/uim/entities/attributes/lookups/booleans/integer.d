module uim.entities.attributes.lookups.booleans.integer;

@safe:
import uim.entities;

class DBooleanIntegerAttribute : DLookupAttribute {
  mixin(AttributeThis!("BooleanIntegerAttribute"));

  mixin(OProperty!("int[bool]", "lookups"));

  override DValue createValue() {
    return BooleanIntegerValue(this).isNullable(isNullable);
  }
}
mixin(AttributeCalls!("BooleanIntegerAttribute"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}