module uim.domains.attributes.doubles.farads.pico;

/* Unit of capacitance, equivalent to 10E-12 farads

Inheritance
any <- float <- double <- farad <- picofarad
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.capacitance
means.measurement.units.si.farad
has.measurement.fundamentalComponent.kilogram
has.measurement.fundamentalComponent.meter
has.measurement.fundamentalComponent.second
has.measurement.fundamentalComponent.ampere
means.measurement.prefix.pico */

@safe:
import uim.domains;

class DPicoFaradAttribute : DFaradAttribute {
  mixin(AttributeThis!("PicoFaradAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("picoFarad")
      .registerPath("picoFarad");
  }
}
mixin(AttributeCalls!("PicoFaradAttribute"));

version(test_uim_domains) {
  unittest {
    // TODO
  }
}