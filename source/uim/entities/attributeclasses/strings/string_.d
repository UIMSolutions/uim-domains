module uim.entities.attributeclasses.strings.string_;

@safe:
import uim.entities;

class DStringAttributeClass : DCharAttributeClass {
  mixin(AttributeClassThis!"StringAttributeClass");

  mixin(OProperty!("size_t", "maxLength"));

  override void initialize() {
    super.initialize;

    this
      .addDataFormats(["array"])
      .name("string")
      .registerPath("string");
  }
  override DValue createValue() {
    return StringValue(this)
      .maxLength(this.maxLength); }
}
mixin(AttributeClassCalls!"StringAttributeClass");

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DStringAttributeClass);
    testAttributeClass(StringAttributeClass);
  }
}