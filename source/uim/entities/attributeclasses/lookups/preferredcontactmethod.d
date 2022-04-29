module uim.entities.attributeclasses.lookups.preferredcontactmethod;

@safe:
import uim.entities;

class DPreferredContactMethodAttributeClass : DAttributeClass {
  mixin(AttributeClassThis!("PreferredContactMethodAttributeClass"));

  override void initialize() {
    super.initialize;
    // means.measurement.preferredcontactmethod

    this
      .name("preferredcontactmethod")
      .dataFormats(["preferredcontactmethod"])
      .registerPath("preferredcontactmethod");
  }

/*   override DValue createValue() {
    return PreferredContactMethodValue(this); } */
}
mixin(AttributeClassCalls!("PreferredContactMethodAttributeClass"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}