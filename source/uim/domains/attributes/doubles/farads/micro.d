module uim.domains.attributes.doubles.farads.micro;

/* Unit of capacitance, equivalent to 10E-6 microfarads

Inheritance
any <- float <- double <- microfarad <- micromicrofarad
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.capacitance
means.measurement.units.si.microfarad
has.measurement.fundamentalComponent.kilogram
has.measurement.fundamentalComponent.meter
has.measurement.fundamentalComponent.second
has.measurement.fundamentalComponent.microfarad
means.measurement.prefix.micro */

@safe:
import uim.domains;

class DMicroFaradAttribute : DFaradAttribute {
  mixin(AttributeThis!("MicroFaradAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("microFarad")
      .registerPath("microFarad");
  }
}
mixin(AttributeCalls!("MicroFaradAttribute"));

version(test_uim_domains) {
  unittest {
    // TODO
  }
}