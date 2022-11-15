module source.uim.domains.attributes.entities.file;

@safe:
import uim.domains;

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

version(test_uim_domains) {
  unittest {
    testAttribute(new DFileAttribute);
    testAttribute(FileAttribute);
  }
}