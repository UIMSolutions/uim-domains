module uim.entities.attributeclasses.uuids.entities.file;

@safe:
import uim.entities;

// A unique identifier for entity instances

class DFileIdAttributeClass : DEntityIdAttributeClass {
  mixin(AttributeClassThis!("FileIdAttributeClass"));
}
mixin(AttributeClassCalls!("FileIdAttributeClass"));

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DFileIdAttributeClass);
    testAttributeClass(FileIdAttributeClass);
  }
}