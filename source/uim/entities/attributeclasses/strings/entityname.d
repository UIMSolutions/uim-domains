module uim.entities.attributeclasses.strings.entityname;

@safe:
import uim.entities;

/* is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.entityName
means.entityName */
class DEntityNameAttributeClass : DOOPStringAttributeClass {
  mixin(AttributeClassThis!("EntityNameAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("entityName")
      .registerPath("entityname");
  }
}
mixin(AttributeClassCalls!("EntityNameAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}