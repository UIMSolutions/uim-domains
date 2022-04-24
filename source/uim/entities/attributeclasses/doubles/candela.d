module uim.entities.attributeclasses.doubles.candela;

// candela
// Unit of measure for luminous intensity in candelas

@safe:
import uim.entities;

class DCandelaAttributeClass : DOOPDoubleAttributeClass {
  mixin(AttributeClassThis!("CandelaAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("candela")
      .registerPath("candela");
  }
}
mixin(AttributeClassCalls!("CandelaAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}