module uim.entities.attributeclasses.chars.strings.ethnicity;

@safe:
import uim.entities;

/* 
is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.demographic.ethnicity */
class DEthnicityAttributeClass : DOOPStringAttributeClass {
  mixin(AttributeClassThis!("EthnicityAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("ethnicity")
      .registerPath("ethnicity");
  }
}
mixin(AttributeClassCalls!("EthnicityAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}