module uim.domains.attributes.doubles.degree;

@safe:
import uim.domains;

/* 
Unit of measure for angles in degrees, 1/360 rotation
means.measurement.dimension.angle
means.measurement.units.degree
has.measurement.fundamentalComponent */
class DDegreeAttribute : DDoubleAttribute {
  mixin(AttributeThis!("DegreeAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("degree")
      .registerPath("degree");
  }
}
mixin(AttributeCalls!("DegreeAttribute"));

version(test_uim_domains) {
  unittest {
    // TODO
  }
}
