module uim.entities.attributeclasses.strings.companyname;

@safe:
import uim.entities;

// means.identity.company.name
class DCompanyNameAttributeClass : DStringAttributeClass {
  mixin(AttributeClassThis!("CompanyNameAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("companyName")
      .registerPath("companyname");
  }
}
mixin(AttributeClassCalls!("CompanyNameAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}