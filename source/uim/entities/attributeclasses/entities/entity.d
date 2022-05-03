module uim.entities.attributeclasses.entities.entity;

@safe:
import uim.entities;

class DEntityAttributeClass : DAttributeClass {
  mixin(AttributeClassThis!("EntityAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .dataFormats(["time"]);
    // means.measurement.date
    // means.measurement.time
  }
}
mixin(AttributeClassCalls!"EntityAttributeClass");

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DEntityAttributeClass);
    testAttributeClass(EntityAttributeClass);
  }
}