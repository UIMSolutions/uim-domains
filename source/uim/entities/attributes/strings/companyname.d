module uim.entities.attributes.strings.companyname;

@safe:
import uim.entities;

// means.identity.company.name
class DOOPCompanyNameAttribute : DOOPStringAttribute {
  mixin(OOPAttributeThis!("OOPCompanyNameAttribute", "companyname"));

  override void initialize() {
    super.initialize;
  }
}
mixin(OOPAttributeCalls!("OOPCompanyNameAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}