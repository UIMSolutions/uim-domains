module uim.entities.attributeclasses.uuids.entities.contact;

@safe:
import uim.entities;

class DContactIdAttributeClass : DEntityIdAttributeClass {
  mixin(AttributeClassThis!("ContactIdAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("contactId")
      .registerPath("contactid");
  }  
}
mixin(AttributeClassCalls!("ContactIdAttributeClass"));

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DContactIdAttributeClass);
    testAttributeClass(ContactIdAttributeClass);
  }
}