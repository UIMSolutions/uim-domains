module uim.entities.attributes.floats.doubles.degree;

@safe:
import uim.entities;

/* 
Unit of measure for angles in degrees, 1/360 rotation
means.measurement.dimension.angle
means.measurement.units.degree
has.measurement.fundamentalComponent */
class DDegreeAttribute : DDoubleAttribute {
  mixin(AttributeThis!("DegreeAttribute"));
}
mixin(AttributeCalls!("DegreeAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}
