module uim.domains.attributes.doubles.grams.kilo;

/* Unit of measure for mass in kilogram

Inheritance
any <- float <- double <- kilogram
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.mass
means.measurement.units.si.kilogram
has.measurement.fundamentalComponent.kilogram */

@safe:
import uim.domains;

class DKilogramAttribute : DGramAttribute {
  mixin(AttributeThis!("KilogramAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("kilogram")
      .registerPath("kilogram");
  }
}
mixin(AttributeCalls!("KilogramAttribute"));

version(test_uim_domains) {
  unittest {
    // TODO
  }
}