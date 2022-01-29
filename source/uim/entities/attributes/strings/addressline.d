module uim.entities.attributes.strings.addressline;

@safe:
import uim.entities;

// means.location.address
class DOOPAttributeAddressline : DOOPStringAttribute {
  mixin(OOPAttributeThis!("OOPAttributeAddressline", "addressline"));

  override void initialize() {
    super.initialize;

    this
      .isCharacter(true)
      .isBig(true)
      .isArray(true);
  }
}
mixin(OOPAttributeCalls!("OOPAttributeAddressline"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}
