module uim.entities.attributeclasses.strings.governmentid;

@safe:
import uim.entities;

/* is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.identity.governmentID */
class DGovernmentIdAttributeClass : DStringAttributeClass {
  mixin(AttributeClassThis!("GovernmentIdAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("governmentId")
      .registerPath("governmentid");
  }
}
mixin(AttributeClassCalls!("GovernmentIdAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}