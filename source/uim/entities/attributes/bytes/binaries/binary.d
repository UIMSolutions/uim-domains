module uim.entities.attributes.bytes.binary;

@safe:
import uim.entities;

class DBinaryAttribute : DAttribute {
  mixin(AttributeThis!("BinaryAttribute"));

  override void initialize() {
    super.initialize;


    /* Inheritance
    any <- byte <- binary
    Traits
    is.dataFormat.byte
    is.dataFormat.array */
    this
      .addDataFormats(["array"])
      .name("binary")
      .registerPath("binary");
  }
}
mixin(AttributeCalls!("BinaryAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DBinaryAttribute);
    testAttribute(BinaryAttribute);
  }
}