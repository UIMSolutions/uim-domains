module uim.entities.attributes.doubles.grams.milli;

/* Unit of measure for mass in milligrams

Inheritance
any <- float <- double <- gram <- milligram
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.mass
means.measurement.units.si.gram
has.measurement.fundamentalComponent.kilogram
means.measurement.prefix.milli */

@safe:
import uim.entities;

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

version(test_uim_entities) {
  unittest {
    // TODO
  }
}