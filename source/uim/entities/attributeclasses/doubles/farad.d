module uim.entities.attributeclasses.floats.doubles.farad;

@safe:
import uim.entities;

/* is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.capacitance
means.measurement.units.si.farad
has.measurement.fundamentalComponent.kilogram
has.measurement.fundamentalComponent.meter
has.measurement.fundamentalComponent.second
has.measurement.fundamentalComponent.ampere */
class DFaradAttributeClass : DDoubleAttributeClass {
  mixin(AttributeClassThis!("FaradAttributeClass"));
}
mixin(AttributeClassCalls!("FaradAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}
