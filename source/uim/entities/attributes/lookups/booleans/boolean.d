module uim.entities.attributes.lookups.booleans.boolean;

@safe:
import uim.entities;

class DBooleanBooleanAttribute : DLookupAttribute {
  mixin(AttributeThis!("BooleanBooleanAttribute"));

  mixin(OProperty!("bool[bool]", "lookups"));

  override DValue createValue() {
    return BooleanBooleanValue(this).isNullable(isNullable);
  }
}
mixin(AttributeCalls!("BooleanBooleanAttribute"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}