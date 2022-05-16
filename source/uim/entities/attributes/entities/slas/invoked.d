module source.uim.entities.attributes.entities.slas.invoked;

@safe:
import uim.entities;

class DSLAInvokedAttribute : DEntityAttribute {
  mixin(AttributeThis!("SLAInvokedAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("slaInvoked")
      .registerPath("slaInvoked");
  }  
}
mixin(AttributeCalls!("SLAInvokedAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DSLAInvokedAttribute);
    testAttribute(SLAInvokedAttribute);
  }
} 