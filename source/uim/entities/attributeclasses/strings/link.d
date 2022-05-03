module uim.entities.attributeclasses.strings.link;

@safe:
import uim.entities;

class DLinkAttributeClass : DStringAttributeClass {
  mixin(AttributeClassThis!("LinkAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("link")
      .registerPath("link");
  }
}
mixin(AttributeClassCalls!("LinkAttributeClass"));

version(test_uim_entities) {
  unittest {
  }  
}