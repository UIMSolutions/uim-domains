module uim.entities.attributeclasses.decimals.decimal;

@safe:
import uim.entities;

class DDecimalAttributeClass : DAttributeClass {
  mixin(AttributeClassThis!("DecimalAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .dataFormats(["numeric.shaped"])
      .name("decimal")
      .registerPath("decimal");
  }
}
mixin(AttributeClassCalls!"DecimalAttributeClass");

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DDecimalAttributeClass);
    testAttributeClass(DecimalAttributeClass);
  }
}