module uim.entities.attributeclasses.strings.addressline;

@safe:
import uim.entities;

class DOOPAddressLineAttributeClass : DStringAttributeClass {
  mixin(AttributeClassThis!"OOPAddressLineAttributeClass");

  override void initialize() {
    super.initialize;

    // means.location.address
    this
      .name("addressline")
      .registerPath("addressline");
  }
}
mixin(AttributeClassCalls!"OOPAddressLineAttributeClass");

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DOOPAddressLineAttributeClass);
    testAttributeClass(OOPAddressLineAttributeClass);
  }
}