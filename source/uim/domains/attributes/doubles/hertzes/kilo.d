module uim.domains.attributes.doubles.hertzes.kilo;

/* Unit of frequency equivalent to 10E3 hertz

is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.frequency
means.measurement.units.si.hertz
has.measurement.fundamentalComponent.second
means.measurement.prefix.kilo */

@safe:
import uim.domains;

class DKiloHertzAttribute : DHertzAttribute {
  mixin(AttributeThis!("KiloHertzAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("kilohertz")
      .registerPath("kilohertz");
  }
}
mixin(AttributeCalls!("KiloHertzAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}