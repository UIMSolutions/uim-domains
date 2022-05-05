module uim.entities.attributes.strings.uri;

/* any <- char <- string <- uri
Traits
is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.reference.URI */

@safe:
import uim.entities;

class DUriAttribute : DStringAttribute {
  mixin(AttributeThis!("UriAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("uri")
      .registerPath("uri");
  }
}
mixin(AttributeCalls!("UriAttribute"));

version(test_uim_entities) {
  unittest {
  }  
}