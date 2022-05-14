module uim.entities.attributes.uuids.entities.file;

@safe:
import uim.entities;

// A unique identifier for entity instances
class DFileIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("FileIdAttribute"));

/*   is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
is.dataFormat.guid
means.identity.entityId */

  override void initialize() {
    super.initialize;

    this
      .name("fileId")
      .registerPath("accounfileIdtid");
  }  
}
mixin(AttributeCalls!("FileIdAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DFileIdAttribute);
    testAttribute(FileIdAttribute);
  }
}