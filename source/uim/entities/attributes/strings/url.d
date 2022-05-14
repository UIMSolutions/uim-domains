module uim.entities.attributes.strings.url;

@safe:
import uim.entities;

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