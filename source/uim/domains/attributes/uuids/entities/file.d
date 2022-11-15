module uim.domains.attributes.uuids.entities.file;

@safe:
import uim.domains;

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

version(test_uim_domains) {
  unittest {
    testAttribute(new DFileIdAttribute);
    testAttribute(FileIdAttribute);
  }
}