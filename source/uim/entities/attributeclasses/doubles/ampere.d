module uim.entities.attributeclasses.doubles.ampere;

@safe:
import uim.entities;

// Unit of measure for electric current in amperes
// means.measurement.dimension.electricCurrent
// means.measurement.units.si.ampere
// has.measurement.fundamentalComponent.ampere
class DAmpereAttributeClass : DDoubleAttributeClass {
  mixin(AttributeClassThis!("AmpereAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("ampere")
      .registerPath("ampere");
  }
}
mixin(AttributeClassCalls!("AmpereAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}
