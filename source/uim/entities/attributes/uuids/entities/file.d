module uim.entities.attributes.uuids.entities.file;

@safe:
import uim.entities;

// A unique identifier for entity instances

class DFileIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("FileIdAttribute"));
}
mixin(AttributeCalls!("FileIdAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DFileIdAttribute);
    testAttribute(FileIdAttribute);
  }
}