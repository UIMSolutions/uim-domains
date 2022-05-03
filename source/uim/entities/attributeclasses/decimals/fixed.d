module uim.entities.attributeclasses.decimals.fixed;

@safe:
import uim.entities;

// The 64 bit fixed (4) scale numbers used by PBI
class DFixedDecimalAttributeClass : DDecimalAttributeClass {
  mixin(AttributeClassThis!("FixedDecimalAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("fixedDecimal")
      .registerPath("fixeddecimal");
  }
}
mixin(AttributeClassCalls!"FixedDecimalAttributeClass");

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DFixedDecimalAttributeClass);
    testAttributeClass(FixedDecimalAttributeClass);
  }
}