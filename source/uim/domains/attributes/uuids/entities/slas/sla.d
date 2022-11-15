module uim.domains.attributes.uuids.entities.slas.sla;

@safe:
import uim.domains;

class DSlaIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("SlaIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("slaId")
      .registerPath("slaId");
  }  
}
mixin(AttributeCalls!("SlaIdAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DSlaIdAttribute);
    testAttribute(SlaIdAttribute);
  }
} 