module uim.entities.attributeclasses.doubles.coulomb;

@safe:
import uim.entities;

// Unit of measure for electric charge or amount of electricity in coulombs

// Unit of measure for electric current in coulombs
// means.measurement.dimension.electricCurrent
// means.measurement.units.si.coulomb
// has.measurement.fundamentalComponent.coulomb
class DOOPCoulombAttributeClass : DOOPDoubleAttributeClass {
  mixin(AttributeClassThis!("OOPCoulombAttributeClass"));
}
mixin(AttributeClassCalls!("OOPCoulombAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}