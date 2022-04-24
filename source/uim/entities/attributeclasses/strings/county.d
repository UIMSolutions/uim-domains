module uim.entities.attributeclasses.chars.strings.county;

@safe:
import uim.entities;

// means.location.county
class DOOPCountyAttributeClass : DOOPStringAttributeClass {
  mixin(AttributeClassThis!("OOPCountyAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("county")
      .registerPath("county");
  }
}
mixin(AttributeClassCalls!("OOPCountyAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}