module uim.entities.attributeclasses.integers.long_;

@safe:
import uim.entities;

class DLongAttributeClass : DAttributeClass {
  mixin(AttributeClassThis!("LongAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .addDataFormats(["long"])
      .name("long")
      .registerPath("long");
  }    
}
mixin(AttributeClassCalls!("LongAttributeClass"));

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DLongAttributeClass);
    testAttributeClass(LongAttributeClass);
  }
}