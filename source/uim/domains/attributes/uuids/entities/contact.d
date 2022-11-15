module uim.domains.attributes.uuids.entities.contact;

@safe:
import uim.domains;

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

version(test_uim_domains) {
  unittest {
    testAttribute(new DContactIdAttribute);
    testAttribute(ContactIdAttribute);
  }
}