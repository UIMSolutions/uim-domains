module uim.entities.attributes.strings.ethnicity;

@safe:
import uim.entities;

/* 
is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.demographic.ethnicity */
class DEthnicityAttribute : DStringAttribute {
  mixin(AttributeThis!("EthnicityAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("ethnicity")
      .registerPath("ethnicity");
  }
}
mixin(AttributeCalls!("EthnicityAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}