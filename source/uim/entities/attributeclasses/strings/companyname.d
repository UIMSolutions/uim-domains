module uim.entities.attributeclasses.chars.strings.companyname;

@safe:
import uim.entities;

// means.identity.company.name
class DOOPCompanyNameAttributeClass : DOOPStringAttributeClass {
  mixin(AttributeClassThis!("OOPCompanyNameAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("companyname")
      .registerPath("companyname");
  }
}
mixin(AttributeClassCalls!("OOPCompanyNameAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}