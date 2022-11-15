module uim.domains.attributes.strings.ethnicity;

@safe:
import uim.domains;

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

version(test_uim_domains) {
  unittest {
    // TODO
  }
}