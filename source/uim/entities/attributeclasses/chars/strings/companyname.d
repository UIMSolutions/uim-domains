module uim.entities.attributeclasses.chars.strings.companyname;

@safe:
import uim.entities;

// means.identity.company.name
class DOOPCompanyNameAttributeClass : DOOPStringAttributeClass {
  mixin(AttributeClassThis!("OOPCompanyNameAttributeClass"));
}
mixin(AttributeClassCalls!("OOPCompanyNameAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}