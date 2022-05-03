module uim.entities.attributeclasses.strings.colorname;

@safe:
import uim.entities;

// means.measurement.color
class DColorNameAttributeClass : DStringAttributeClass {
  mixin(AttributeClassThis!("ColorNameAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("colorName")
      .registerPath("colorname");
  }
}
mixin(AttributeClassCalls!("ColorNameAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}