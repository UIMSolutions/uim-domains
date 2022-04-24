module uim.entities.attributeclasses.floats.doubles.degree;

@safe:
import uim.entities;

/* is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.angle
means.measurement.units.degree
has.measurement.fundamentalComponent */
class DDegreeAttributeClass : DOOPDoubleAttributeClass {
  mixin(AttributeClassThis!("DegreeAttributeClass"));
}
mixin(AttributeClassCalls!("DegreeAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}
