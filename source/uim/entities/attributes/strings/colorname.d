module uim.entities.attributes.strings.colorname;

@safe:
import uim.entities;

// means.measurement.color
class DColorNameAttribute : DStringAttribute {
  mixin(AttributeThis!("ColorNameAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("colorName")
      .registerPath("colorname");
  }
}
mixin(AttributeCalls!("ColorNameAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}