module uim.entities.attributes.doubles.amperes.micro;

/* Unit of capacitance, equivalent to 10E-6 amperes

Inheritance
any <- float <- double <- ampere <- microampere
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.electricCurrent
means.measurement.units.si.ampere
has.measurement.fundamentalComponent.ampere
means.measurement.prefix.micro */

@safe:
import uim.entities;

class DMicroAmpereAttribute : DAmpereAttribute {
  mixin(AttributeThis!("MicroAmpereAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("microAmpere")
      .registerPath("microAmpere");
  }
}
mixin(AttributeCalls!("MicroAmpereAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}