module uim.domains.attributes.strings.addressline;

@safe:
import uim.domains;
/** 
 * is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.location.address
 */
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

version(test_uim_domains) {
  unittest {
    testAttribute(new DAddressLineAttribute);
    testAttribute(AddressLineAttribute);
  }
}