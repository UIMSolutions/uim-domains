module uim.entities.attributes.strings.addressline;

@safe:
import uim.entities;

// means.location.address
class DOOPAddresslineAttribute : DOOPStringAttribute {
  mixin(OOPAttributeThis!("OOPAddresslineAttribute", "addressline"));

  override void initialize() {
    super.initialize;

    this
      .isCharacter(true)
      .isBig(true)
      .isArray(true);
  }
}
mixin(OOPAttributeCalls!("OOPAddresslineAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}
