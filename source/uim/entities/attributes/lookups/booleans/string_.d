module uim.entities.attributes.lookups.booleans.string_;

@safe:
import uim.entities;

class DBooleanStringAttribute : DAttribute {
  mixin(AttributeThis!("BooleanStringAttribute"));

  mixin(OProperty!("string[bool]", "lookups"));

  override DValue createValue() {
    return BooleanStringValue(this).isNullable(isNullable);
  }
}
mixin(AttributeCalls!("BooleanStringAttribute"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}