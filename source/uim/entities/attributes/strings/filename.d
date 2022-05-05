module uim.entities.attributes.strings.filename;

@safe:
import uim.entities;

// A string value representing the name of a file.
class DFileNameAttribute : DStringAttribute {
  mixin(AttributeThis!("FileNameAttribute"));

  override void initialize() {
    super.initialize;

/* is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.fileName */
    this
      .name("fileName")
      .registerPath("fileName");
  }
}
mixin(AttributeCalls!("FileNameAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}