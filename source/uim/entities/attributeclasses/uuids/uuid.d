module uim.entities.attributeclasses.uuids.uuid;

@safe:
import uim.entities;

class DOOPUUIDAttributeClass : DAttributeClass {
  mixin(AttributeClassThis!("OOPUUIDAttributeClass"));
}
mixin(AttributeClassCalls!("OOPUUIDAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO Add tests
    }}