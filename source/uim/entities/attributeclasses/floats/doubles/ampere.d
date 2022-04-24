module uim.entities.attributeclasses.doubles.ampere;

@safe:
import uim.entities;

// Unit of measure for electric current in amperes
// means.measurement.dimension.electricCurrent
// means.measurement.units.si.ampere
// has.measurement.fundamentalComponent.ampere
class DOOPAmpereAttributeClass : DOOPDoubleAttributeClass {
  mixin(AttributeClassThis!("OOPAmpereAttributeClass"));
}
mixin(AttributeClassCalls!("OOPAmpereAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}
