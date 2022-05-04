module uim.entities.attributes.decimals.decimal;

@safe:
import uim.entities;

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

version(test_uim_entities) {
  unittest {
    testAttribute(new DDecimalAttribute);
    testAttribute(DecimalAttribute);
  }
}