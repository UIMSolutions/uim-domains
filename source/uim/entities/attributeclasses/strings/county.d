module uim.entities.attributeclasses.strings.county;

@safe:
import uim.entities;

// means.location.county
class DCountyAttributeClass : DStringAttributeClass {
  mixin(AttributeClassThis!("CountyAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("county")
      .registerPath("county");
  }
}
mixin(AttributeClassCalls!("CountyAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}