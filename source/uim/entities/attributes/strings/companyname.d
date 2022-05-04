module uim.entities.attributes.strings.companyname;

@safe:
import uim.entities;

// means.identity.company.name
class DCompanyNameAttribute : DStringAttribute {
  mixin(AttributeThis!("CompanyNameAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("companyName")
      .registerPath("companyname");
  }
}
mixin(AttributeCalls!("CompanyNameAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}