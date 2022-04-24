module uim.entities.attributeclasses.uuids.uuid;

@safe:
import uim.entities;

class DUUIDAttributeClass : DAttributeClass {
  mixin(AttributeClassThis!("UUIDAttributeClass"));
}
mixin(AttributeClassCalls!("UUIDAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO Add tests
    }}