module uim.entities.attributeclasses.chars.char_;

@safe:
import uim.entities;

class DCharAttributeClass : DAttributeClass {
  mixin(AttributeClassThis!"CharAttributeClass");

  override void initialize() {
    super.initialize;

    this
      .dataFormats(["character", "big"])
      .name("char")
      .registerPath("char");
  }
}
mixin(AttributeClassCalls!"CharAttributeClass");

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DCharAttributeClass);
    testAttributeClass(CharAttributeClass);
  }
}