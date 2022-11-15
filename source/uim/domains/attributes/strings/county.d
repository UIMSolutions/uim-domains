module uim.domains.attributes.strings.county;

@safe:
import uim.domains;

// means.location.county
class DCountyAttribute : DStringAttribute {
  mixin(AttributeThis!("CountyAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("county")
      .registerPath("county");
  }
}
mixin(AttributeCalls!("CountyAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}