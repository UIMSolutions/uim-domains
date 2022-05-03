module uim.entities.attributeclasses.integers.displayorder;

@safe:
import uim.entities;

class DDisplayOrderAttributeClass : DIntegerAttributeClass {
  mixin(AttributeClassThis!("DisplayOrderAttributeClass"));
}
mixin(AttributeClassCalls!("DisplayOrderAttributeClass"));

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DDisplayOrderAttributeClass);
    testAttributeClass(DisplayOrderAttributeClass);
  }
}