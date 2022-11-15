module uim.domains.attributes.bytes.byte_;

@safe:
import uim.domains;

class DByteAttribute : DAttribute {
  mixin(AttributeThis!("ByteAttribute"));

  override void initialize() {
    super.initialize;

    this
      .addDataFormats(["byte"])
      .name("byte")
      .registerPath("byte");
  }
}
mixin(AttributeCalls!("ByteAttribute"));

version(test_uim_domains) {
  unittest {
    testAttribute(new DByteAttribute);
    testAttribute(ByteAttribute);
  }
}