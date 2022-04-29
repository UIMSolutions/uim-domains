module uim.entities.attributeclasses.entities.entity;

@safe:
import uim.entities;

class DOOPEntityAttributeClass : DAttributeClass {
  mixin(AttributeClassThis!("OOPEntityAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .dataFormats(["time"]);
    // means.measurement.date
    // means.measurement.time
  }
}
mixin(AttributeClassCalls!"OOPEntityAttributeClass");

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DOOPEntityAttributeClass);
    testAttributeClass(OOPEntityAttributeClass);
  }
}