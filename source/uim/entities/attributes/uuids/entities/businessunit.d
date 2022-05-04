module uim.entities.attributes.uuids.entities.businessunit;

@safe:
import uim.entities;

// A unique identifier for entity instances

class DBusinessUnitIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("BusinessUnitIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("businessUnitId")
      .registerPath("businessunitid");
  }  
}
mixin(AttributeCalls!("BusinessUnitIdAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DBusinessUnitIdAttribute);
    testAttribute(BusinessUnitIdAttribute);
  }
}