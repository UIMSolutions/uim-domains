module uim.domains.attributes.entities.organization;

@safe:
import uim.domains;

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

version(test_uim_domains) {
  unittest {
    testAttribute(new DOrganizationAttribute);
    testAttribute(OrganizationAttribute);
  }
}