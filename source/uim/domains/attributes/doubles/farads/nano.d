module uim.domains.attributes.doubles.farads.nano;

/* Unit of capacitance, equivalent to 10E-9 farads

Inheritance
any <- float <- double <- farad <- nanofarad
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.capacitance
means.measurement.units.si.farad
has.measurement.fundamentalComponent.kilogram
has.measurement.fundamentalComponent.meter
has.measurement.fundamentalComponent.second
has.measurement.fundamentalComponent.ampere
means.measurement.prefix.nano */

@safe:
import uim.domains;

class DNanoFaradAttribute : DFaradAttribute {
  mixin(AttributeThis!("NanoFaradAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("nanoFarad")
      .registerPath("nanoFarad");
  }
}
mixin(AttributeCalls!("NanoFaradAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}