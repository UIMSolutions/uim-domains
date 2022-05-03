module uim.entities.attributeclasses.strings.addressline;

@safe:
import uim.entities;

class DAddressLineAttributeClass : DStringAttributeClass {
  mixin(AttributeClassThis!"AddressLineAttributeClass");

  override void initialize() {
    super.initialize;

    // means.location.address
    this
      .name("addressLine")
      .registerPath("addressline");
  }
}
mixin(AttributeClassCalls!"AddressLineAttributeClass");

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DAddressLineAttributeClass);
    testAttributeClass(AddressLineAttributeClass);
  }
}