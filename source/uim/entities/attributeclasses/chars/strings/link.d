module uim.entities.attributeclasses.chars.strings.link;

@safe:
import uim.entities;

class DOOPLinkAttributeClass : DOOPStringAttributeClass {
  mixin(AttributeClassThis!("OOPLinkAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("link")
      .registerPath("link");
  }
}
mixin(AttributeClassCalls!("OOPLinkAttributeClass"));

version(test_uim_entities) {
  unittest {
  }  
}