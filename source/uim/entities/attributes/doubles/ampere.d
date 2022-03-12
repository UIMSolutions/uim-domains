module uim.entities.attributes.doubles.ampere;

@safe:
import uim.entities;

// Unit of measure for electric current in amperes
// means.measurement.dimension.electricCurrent
// means.measurement.units.si.ampere
// has.measurement.fundamentalComponent.ampere
class DOOPAmpereAttribute : DOOPDoubleAttribute {
  mixin(OOPAttributeThis!("OOPAmpereAttribute", "ampere"));
}
mixin(OOPAttributeCalls!("OOPAmpereAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}
