module uim.entities.attributeclasses.datetimes.time;

@safe:
import uim.entities;

class DOOPTimeAttributeClass : DOOPDateAttributeClass {
  mixin(OOPAttribAttributeClassThisuteThis!("OOPTimeAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .dataFormats(["time"]);
    // means.measurement.date
    // means.measurement.time
  }
}
mixin(AttributeClassCalls!"OOPTimeAttributeClass");

version(test_uim_entities) {
  unittest {
    testAttributeClass(new OOPTimeAttributeClass);
    testAttributeClass(OOPTimeAttributeClass);
  }
}