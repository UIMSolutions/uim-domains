module uim.domains.attributes.strings.string_;

@safe:
import uim.domains;

class DStringAttribute : DCharAttribute {
  mixin(AttributeThis!"StringAttribute");

  mixin(OProperty!("size_t", "maxLength"));

  override void initialize() {
    super.initialize;

    this
      .name("string")
      .registerPath("string");
  }
  override DValue createValue() {
    return StringValue(this)
      .maxLength(this.maxLength); }
}
mixin(AttributeCalls!"StringAttribute");

version(test_uim_entities) {
  unittest {
    testAttribute(new DStringAttribute);
    testAttribute(StringAttribute);
  }
}