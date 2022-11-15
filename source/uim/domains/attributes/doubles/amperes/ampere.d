module uim.domains.attributes.doubles.amperes.ampere;

// Unit of measure for electric current in amperes
/** 
 * is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.electricCurrent
means.measurement.units.si.ampere
has.measurement.fundamentalComponent.ampere
 */

@safe:
import uim.domains;

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
