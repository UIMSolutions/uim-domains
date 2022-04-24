module uim.entities.attributeclasses.strings.url;

@safe:
import uim.entities;

class DOOPUrlAttributeClass : DOOPStringAttributeClass {
  mixin(AttributeClassThis!("OOPUrlAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .addDataFormats(["array"])
      .name("url")
      .registerPath("url");
  }
}
mixin(AttributeClassCalls!("OOPUrlAttributeClass"));

version(test_uim_entities) {
  unittest {
  }  
}