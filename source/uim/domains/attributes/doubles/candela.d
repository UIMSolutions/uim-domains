module uim.domains.attributes.doubles.candela;

// candela
// Unit of measure for luminous intensity in candelas

@safe:
import uim.domains;

class DCandelaAttribute : DDoubleAttribute {
  mixin(AttributeThis!("CandelaAttribute"));

  override void initialize() {
    super.initialize;

/* is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.luminousIntensity
means.measurement.units.si.candela
has.measurement.fundamentalComponent.candela */

    this
      .name("candela")
      .registerPath("candela");
  }
}
mixin(AttributeCalls!("CandelaAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}