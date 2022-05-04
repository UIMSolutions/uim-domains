module uim.entities.attributes.strings.governmentid;

@safe:
import uim.entities;

/* is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.identity.governmentID */
class DGovernmentIdAttribute : DStringAttribute {
  mixin(AttributeThis!("GovernmentIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("governmentId")
      .registerPath("governmentid");
  }
}
mixin(AttributeCalls!("GovernmentIdAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}