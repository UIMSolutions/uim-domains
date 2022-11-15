module uim.domains.attributes.strings.gender;

@safe:
import uim.domains;

/* is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.demographic.gender */
class DGenderAttribute : DStringAttribute {
  mixin(AttributeThis!("GenderAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("gender")
      .registerPath("gender");
  }
}
mixin(AttributeCalls!("GenderAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}