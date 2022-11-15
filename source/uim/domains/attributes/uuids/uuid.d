module uim.domains.attributes.uuids.uuid;

@safe:
import uim.domains;

class DUUIDAttribute : DAttribute {
  mixin(AttributeThis!("UUIDAttribute"));

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
mixin(AttributeCalls!("UUIDAttribute"));

version(test_uim_domains) {
  unittest {
    testAttribute(new DUUIDAttribute);
    testAttribute(UUIDAttribute);
}}