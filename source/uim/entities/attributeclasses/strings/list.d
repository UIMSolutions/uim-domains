module uim.entities.attributeclasses.strings.list;

@safe:
import uim.entities;

// A CSV contained within one string value
// means.content.text.CSV
class DOOPListAttributeClass : DStringAttributeClass {
  mixin(AttributeClassThis!("OOPListAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("list")
      .registerPath("list");
  }
}
mixin(AttributeClassCalls!("OOPListAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}