module uim.domains.attributes.strings.entityname;

@safe:
import uim.domains;

/* Type for trait parameters that take entity names as values
is.dataFormat.character
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
      .registerPath("entityName");
  }
}
mixin(AttributeCalls!("EntityNameAttribute"));

version(test_uim_domains) {
  unittest {
    // TODO
  }
}