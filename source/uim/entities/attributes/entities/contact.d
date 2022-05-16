module source.uim.entities.attributes.entities.contact;

@safe:
import uim.entities;

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

version(test_uim_entities) {
  unittest {
    testAttribute(new DContactAttribute);
    testAttribute(ContactAttribute);
  }
}