module uim.entities.attributeclasses.strings.list;

@safe:
import uim.entities;

// A CSV contained within one string value
// means.content.text.CSV
class DListAttributeClass : DStringAttributeClass {
  mixin(AttributeClassThis!("ListAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("list")
      .registerPath("list");
  }
}
mixin(AttributeClassCalls!("ListAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}