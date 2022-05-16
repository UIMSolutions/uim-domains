module source.uim.entities.attributes.entities.slas.invoked;

@safe:
import uim.entities;

class DSLAInvokedIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("SLAInvokedIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("slaInvokedId")
      .registerPath("slaInvokedId");
  }  
}
mixin(AttributeCalls!("SLAInvokedIdAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DSLAInvokedIdAttribute);
    testAttribute(SLAInvokedIdAttribute);
  }
} 