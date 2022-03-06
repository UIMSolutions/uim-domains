module uim.entities.attributeclasses.chars.strings.addressline;

@safe:
import uim.entities;

class DOOPAddressLineAttributeClass : DOOPStringAttributeClass {
  mixin(AttributeClassThis!"OOPAddressLineAttributeClass");

  override void initialize() {
    super.initialize;

    // means.location.address
  }
}
mixin(AttributeClassCalls!"OOPAddressLineAttributeClass");

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DOOPAddressLineAttributeClass);
    testAttributeClass(OOPAddressLineAttributeClass);
  }
}