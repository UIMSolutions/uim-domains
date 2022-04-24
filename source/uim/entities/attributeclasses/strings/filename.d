module uim.entities.attributeclasses.strings.filename;

@safe:
import uim.entities;

// A string value representing the name of a file.
class DFileNameAttributeClass : DOOPStringAttributeClass {
  mixin(AttributeClassThis!("FileNameAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("fileName")
      .registerPath("filename");
  }
}
mixin(AttributeClassCalls!("FileNameAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}