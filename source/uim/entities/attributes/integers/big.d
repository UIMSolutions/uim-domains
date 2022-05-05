module uim.entities.attributes.integers.big;

@safe:
import uim.entities;

class DBigAttribute : DIntegerAttribute {
  mixin(AttributeThis!("BigAttribute"));

  override void initialize() {
    super.initialize;

/* any <- integer <- bigInteger
Traits
is.dataFormat.integer
is.dataFormat.big

 */    this
      .addDataFormats(["big"])
      .name("big")
      .registerPath("big");
  }
}
mixin(AttributeCalls!("BigAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DBigAttribute);
    testAttribute(BigAttribute);
  }
}