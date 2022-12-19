module uim.domains.attributes.doubles.inches;

/* Inheritance
any <- float <- double <- inches
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.distance.inches */

@safe:
import uim.domains;

class DInchesAttribute : DDoubleAttribute {
  mixin(AttributeThis!("InchesAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("inches")
      .registerPath("inches");
  }
}
mixin(AttributeCalls!("InchesAttribute"));

version(test_uim_domains) {
  unittest {
    // TODO
  }
}