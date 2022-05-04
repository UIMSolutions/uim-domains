module uim.entities.attributes.doubles.double_;

@safe:
import uim.entities;

class DDoubleAttribute : DAttribute {
  mixin(AttributeThis!("DoubleAttribute"));

  override void initialize() {
    super.initialize;

    this
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