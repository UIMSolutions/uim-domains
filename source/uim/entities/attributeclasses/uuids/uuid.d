module uim.entities.attributeclasses.uuids.uuid;

@safe:
import uim.entities;

class DUUIDAttributeClass : DAttributeClass {
  mixin(AttributeClassThis!("UUIDAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("uuid")
      .dataFormats(["uuid"])
      .registerPath("uuid");
  }

  override DValue createValue() {
    return UUIDValue(this); }
}
mixin(AttributeClassCalls!("UUIDAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO Add tests
    }}