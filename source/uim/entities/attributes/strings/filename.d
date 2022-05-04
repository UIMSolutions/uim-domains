module uim.entities.attributes.strings.filename;

@safe:
import uim.entities;

// A string value representing the name of a file.
class DFileNameAttribute : DStringAttribute {
  mixin(AttributeThis!("FileNameAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("fileName")
      .registerPath("filename");
  }
}
mixin(AttributeCalls!("FileNameAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}