module uim.domains.attributes.uuids.entities.businessunit;

@safe:
import uim.domains;

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