module uim.entities.attributes.doubles.amperes.milli;

/* Unit of capacitance, equivalent to 10E-3 amperes

Inheritance
any <- float <- double <- ampere <- milliampere
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.electricCurrent
means.measurement.units.si.ampere
has.measurement.fundamentalComponent.ampere
means.measurement.prefix.milli */

@safe:
import uim.entities;

class DMilliAmpereAttribute : DAmpereAttribute {
  mixin(AttributeThis!("MilliAmpereAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("milliAmpere")
      .registerPath("milliAmpere");
  }
}
mixin(AttributeCalls!("MilliAmpereAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}