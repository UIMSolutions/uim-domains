module uim.entities.attributes.doubles.ampere;

@safe:
import uim.entities;

// Unit of measure for electric current in amperes
// means.measurement.dimension.electricCurrent
// means.measurement.units.si.ampere
// has.measurement.fundamentalComponent.ampere
class DAmpereAttribute : DDoubleAttribute {
  mixin(AttributeThis!("AmpereAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("ampere")
      .registerPath("ampere");
  }
}
mixin(AttributeCalls!("AmpereAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}
