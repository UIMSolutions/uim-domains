module uim.domains.attributes.decimals.decimal;

@safe:
import uim.domains;

class DDecimalAttribute : DAttribute {
  mixin(AttributeThis!("DecimalAttribute"));

  override void initialize() {
    super.initialize;

    this
      .dataFormats(["numeric.shaped"])
      .name("decimal")
      .registerPath("decimal");
  }
}
mixin(AttributeCalls!"DecimalAttribute");

version(test_uim_domains) {
  unittest {
    testAttribute(new DDecimalAttribute);
    testAttribute(DecimalAttribute);
  }
}