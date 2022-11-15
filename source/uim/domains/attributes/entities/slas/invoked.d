module uim.domains.attributes.entities.slas.invoked;

@safe:
import uim.domains;

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

version(test_uim_domains) {
  unittest {
    testAttribute(new DSLAInvokedAttribute);
    testAttribute(SLAInvokedAttribute);
  }
} 