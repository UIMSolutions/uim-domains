module uim.entities.attributes.strings.link;

@safe:
import uim.entities;

class DLinkAttribute : DStringAttribute {
  mixin(AttributeThis!("LinkAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("link")
      .registerPath("link");
  }
}
mixin(AttributeCalls!("LinkAttribute"));

version(test_uim_entities) {
  unittest {
  }  
}