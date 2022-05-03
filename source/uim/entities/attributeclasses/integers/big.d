module uim.entities.attributeclasses.integers.big;

@safe:
import uim.entities;

class DBigAttributeClass : DIntegerAttributeClass {
  mixin(AttributeClassThis!("BigAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .addDataFormats(["big"])
      .name("big")
      .registerPath("big");
  }
}
mixin(AttributeClassCalls!("BigAttributeClass"));

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DBigAttributeClass);
    testAttributeClass(BigAttributeClass);
  }
}