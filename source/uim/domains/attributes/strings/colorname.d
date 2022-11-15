module uim.domains.attributes.strings.colorname;

@safe:
import uim.domains;

// means.measurement.color
class DColorNameAttribute : DStringAttribute {
  mixin(AttributeThis!("ColorNameAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("colorName")
      .registerPath("colorName");
  }
}
mixin(AttributeCalls!("ColorNameAttribute"));

version(test_uim_domains) {
  unittest {
    // TODO
  }
}