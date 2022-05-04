module uim.entities.attributeclasses.uuids.entities.organization;

@safe:
import uim.entities;

class DOrganizationIdAttributeClass : DEntityIdAttributeClass {
  mixin(AttributeClassThis!("OrganizationIdAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("organizationId")
      .registerPath("organizationid");
  }  
}
mixin(AttributeClassCalls!("OrganizationIdAttributeClass"));

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DOrganizationIdAttributeClass);
    testAttributeClass(OrganizationIdAttributeClass);
  }
}