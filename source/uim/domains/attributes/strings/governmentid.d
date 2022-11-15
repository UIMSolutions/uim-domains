module uim.domains.attributes.strings.governmentid;

@safe:
import uim.domains;

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