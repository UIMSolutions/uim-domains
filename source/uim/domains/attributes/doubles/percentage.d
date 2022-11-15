module uim.domains.attributes.doubles.percentage;

@safe:
import uim.domains;

class DPercentageAttribute : DDoubleAttribute {
  mixin(AttributeThis!("PercentageAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("percentage")
      .registerPath("percentage");
  }
}
mixin(AttributeCalls!("PercentageAttribute"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}