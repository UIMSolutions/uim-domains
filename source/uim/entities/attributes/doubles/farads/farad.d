module uim.entities.attributes.doubles.farads.farad;

/* Unit of measure for electric capacitance in farads

Inheritance
any <- float <- double <- farad
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.capacitance
means.measurement.units.si.farad
has.measurement.fundamentalComponent.kilogram
has.measurement.fundamentalComponent.meter
has.measurement.fundamentalComponent.second
has.measurement.fundamentalComponent.ampere */

@safe:
import uim.entities;

class DFaradAttribute : DDoubleAttribute {
  mixin(AttributeThis!("FaradAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("farad")
      .registerPath("farad");
  }  
}
mixin(AttributeCalls!("FaradAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}
