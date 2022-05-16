module uim.entities.attributes.uuids.entities.file;

@safe:
import uim.entities;

class DFileIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("FileIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("fileId")
      .registerPath("fileId");
  }  
}
mixin(AttributeCalls!("FileIdAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DFileIdAttribute);
    testAttribute(FileIdAttribute);
  }
}