module uim.domains.attributes.strings.link;

@safe:
import uim.domains;

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

version(test_uim_domains) {
  unittest {
  }  
}