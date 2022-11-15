module uim.domains.attributes.doubles.double_;

@safe:
import uim.domains;

class DDoubleAttribute : DAttribute {
  mixin(AttributeThis!("DoubleAttribute"));

  override void initialize() {
    super.initialize;

    this
      .dataFormats(["floatingPoint", "big"])
      .isDouble(true)
      .name("double")
      .registerPath("double");
  }
}
mixin(AttributeCalls!("DoubleAttribute"));

version(test_uim_entities) {
  unittest {
  }  
}