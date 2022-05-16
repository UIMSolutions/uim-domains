module source.uim.entities.attributes.entities.file;

@safe:
import uim.entities;

class DFileAttribute : DEntityAttribute {
  mixin(AttributeThis!("FileAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("file")
      .registerPath("file");
  }  
}
mixin(AttributeCalls!("FileAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DFileAttribute);
    testAttribute(FileAttribute);
  }
}