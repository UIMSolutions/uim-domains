module uim.entities.attributes.entities.entity;

@safe:
import uim.entities;

class DEntityAttribute : DAttribute {
  mixin(AttributeThis!("EntityAttribute"));

  override void initialize() {
    super.initialize;

    this
      .dataFormats(["time"]);
    // means.measurement.date
    // means.measurement.time
  }
}
mixin(AttributeCalls!"EntityAttribute");

version(test_uim_entities) {
  unittest {
    testAttribute(new DEntityAttribute);
    testAttribute(EntityAttribute);
  }
}