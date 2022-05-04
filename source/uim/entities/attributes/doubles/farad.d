module uim.entities.attributes.floats.doubles.farad;

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
class DFaradAttribute : DDoubleAttribute {
  mixin(AttributeThis!("FaradAttribute"));
}
mixin(AttributeCalls!("FaradAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}
