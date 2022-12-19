module source.uim.domains.attributes.entities.contact;

@safe:
import uim.domains;

class DContactAttribute : DEntityAttribute {
  mixin(AttributeThis!("ContactAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("contact")
      .registerPath("contact");
  }  
}
mixin(AttributeCalls!("ContactAttribute"));

version(test_uim_domains) {
  unittest {
    testAttribute(new DContactAttribute);
    testAttribute(ContactAttribute);
  }
}