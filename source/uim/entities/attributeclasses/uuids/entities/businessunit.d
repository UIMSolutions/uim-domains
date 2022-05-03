module uim.entities.attributeclasses.uuids.entities.businessunit;

@safe:
import uim.entities;

// A unique identifier for entity instances

class DBusinessUnitIdAttributeClass : DEntityIdAttributeClass {
  mixin(AttributeClassThis!("BusinessUnitIdAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("businessUnitId")
      .registerPath("businessunitid");
  }  
}
mixin(AttributeClassCalls!("BusinessUnitIdAttributeClass"));

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DBusinessUnitIdAttributeClass);
    testAttributeClass(BusinessUnitIdAttributeClass);
  }
}