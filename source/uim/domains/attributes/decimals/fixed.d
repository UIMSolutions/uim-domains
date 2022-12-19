module uim.domains.attributes.decimals.fixed;

@safe:
import uim.domains;

// The 64 bit fixed (4) scale numbers used by PBI
class DFixedDecimalAttribute : DDecimalAttribute {
  mixin(AttributeThis!("FixedDecimalAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("fixedDecimal")
      .registerPath("fixedDecimal");
  }
}
mixin(AttributeCalls!"FixedDecimalAttribute");

version(test_uim_domains) {
  unittest {
    testAttribute(new DFixedDecimalAttribute);
    testAttribute(FixedDecimalAttribute);
  }
}