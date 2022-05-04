module uim.entities.attributes.strings.addressline;

@safe:
import uim.entities;

class DAddressLineAttribute : DStringAttribute {
  mixin(AttributeThis!"AddressLineAttribute");

  override void initialize() {
    super.initialize;

    // means.location.address
    this
      .name("addressLine")
      .registerPath("addressline");
  }
}
mixin(AttributeCalls!"AddressLineAttribute");

version(test_uim_entities) {
  unittest {
    testAttribute(new DAddressLineAttribute);
    testAttribute(AddressLineAttribute);
  }
}