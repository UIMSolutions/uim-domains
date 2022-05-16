module uim.entities.attributes.uuids.entities.slas.sla;

@safe:
import uim.entities;

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