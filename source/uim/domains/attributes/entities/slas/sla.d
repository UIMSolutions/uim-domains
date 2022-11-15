module uim.domains.attributes.entities.slas.sla;

@safe:
import uim.domains;

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

version(test_uim_domains) {
  unittest {
    testAttribute(new DSlaAttribute);
    testAttribute(SlaAttribute);
  }
} 