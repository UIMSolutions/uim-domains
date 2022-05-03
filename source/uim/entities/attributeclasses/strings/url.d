module uim.entities.attributeclasses.strings.url;

@safe:
import uim.entities;

class DUrlAttributeClass : DStringAttributeClass {
  mixin(AttributeClassThis!("UrlAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .addDataFormats(["array"])
      .name("url")
      .registerPath("url");
  }
}
mixin(AttributeClassCalls!("UrlAttributeClass"));

version(test_uim_entities) {
  unittest {
  }  
}