module uim.domains.attributes.arrays.bytes.image;

/* any <- byte <- image <- image
Traits
is.dataFormat.byte
is.dataFormat.array
means.content.image.image */

@safe:
import uim.domains;

class DImageAttribute : DBinaryAttribute {
  mixin(AttributeThis!("ImageAttribute"));

  override void initialize() {
    super.initialize;

    /* 
means.content.binary.image */
    this
      .addDataFormats(["array"])
      .name("image")
      .registerPath("image");
  }
}
mixin(AttributeCalls!("ImageAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DImageAttribute);
    testAttribute(ImageAttribute);
  }
}