module uim.entities.attributeclasses.chars.strings.colorname;

@safe:
import uim.entities;

// means.measurement.color
class DOOPColorNameAttributeClass : DOOPStringAttributeClass {
  mixin(AttributeClassThis!("OOPColorNameAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("colorname")
      .registerPath("colorname");
  }
}
mixin(AttributeClassCalls!("OOPColorNameAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}