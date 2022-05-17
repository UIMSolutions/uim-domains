module uim.entities.attributes.entities.slas.sla;

@safe:
import uim.entities;

class DSlaAttribute : DEntityAttribute {
  mixin(AttributeThis!("SlaAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("sla")
      .registerPath("sla");
  }  
}
mixin(AttributeCalls!("SlaAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DSlaAttribute);
    testAttribute(SlaAttribute);
  }
} 