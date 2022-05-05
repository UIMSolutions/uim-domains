module uim.entities.attributes.doubles.grams.gram;

/* Unit of measure for mass in grams

Inheritance
any <- float <- double <- gram
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.mass
means.measurement.units.si.gram
has.measurement.fundamentalComponent.gram */

@safe:
import uim.entities;

class DGramAttribute : DDoubleAttribute {
  mixin(AttributeThis!("GramAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("gram")
      .registerPath("gram");
  }
}
mixin(AttributeCalls!("GramAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}