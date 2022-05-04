module uim.entities.attributes.uuids.entities.contact;

@safe:
import uim.entities;

class DContactIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("ContactIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("contactId")
      .registerPath("contactid");
  }  
}
mixin(AttributeCalls!("ContactIdAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DContactIdAttribute);
    testAttribute(ContactIdAttribute);
  }
}