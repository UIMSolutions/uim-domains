module uim.domains.attributes.strings.url;

@safe:
import uim.domains;

class DUrlAttribute : DStringAttribute {
  mixin(AttributeThis!("UrlAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("url")
      .registerPath("url");
  }
}
mixin(AttributeCalls!("UrlAttribute"));

version(test_uim_entities) {
  unittest {
  }  
}