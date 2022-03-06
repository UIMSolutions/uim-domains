module uim.entities.attributeclasses.chars.strings.string_;

@safe:
import uim.entities;

class DOOPStringAttributeClass : DOOPCharAttributeClass {
  mixin(AttributeClassThis!"OOPStringAttributeClass");

  override void initialize() {
    super.initialize;

    this
      .addDataFormats(["array"]);
  }
}
mixin(AttributeClassCalls!"OOPStringAttributeClass");

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DOOPStringAttributeClass);
    testAttributeClass(OOPStringAttributeClass);
  }
}