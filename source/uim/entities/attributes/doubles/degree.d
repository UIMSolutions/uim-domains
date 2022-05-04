module uim.entities.attributes.floats.doubles.degree;

@safe:
import uim.entities;

/* is.dataFormat.floatingPoint
is.dataFormat.big
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
