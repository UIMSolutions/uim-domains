module uim.entities.attributes.entities.organization;

@safe:
import uim.entities;

class DOrganizationAttribute : DEntityAttribute {
  mixin(AttributeThis!("OrganizationAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("organization")
      .registerPath("organization");
  }  
}
mixin(AttributeCalls!("OrganizationAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DOrganizationAttribute);
    testAttribute(OrganizationAttribute);
  }
}