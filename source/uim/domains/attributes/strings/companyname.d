module uim.domains.attributes.strings.companyname;

@safe:
import uim.domains;

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