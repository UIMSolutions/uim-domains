module uim.entities.attributes.uuids.entities.organization;

@safe:
import uim.entities;

class DOrganizationIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("OrganizationIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("organizationId")
      .registerPath("organizationid");
  }  
}
mixin(AttributeCalls!("OrganizationIdAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DOrganizationIdAttribute);
    testAttribute(OrganizationIdAttribute);
  }
}