module uim.entities.attributes.strings.entityname;

@safe:
import uim.entities;

/* is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.entityName
means.entityName */
class DEntityNameAttribute : DStringAttribute {
  mixin(AttributeThis!("EntityNameAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("entityName")
      .registerPath("entityname");
  }
}
mixin(AttributeCalls!("EntityNameAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}