module uim.entities.attributeclasses.datetimes.datetime;

@safe:
import uim.entities;

class DOOPDatetimeAttributeClass : DOOPDateAttributeClass {
  mixin(OOPAttribAttributeClassThisuteThis!("OOPDatetimeAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .dataFormats(["time"]);
    // means.measurement.date
    // means.measurement.time
  }
}
mixin(AttributeClassCalls!"OOPDatetimeAttributeClass");

version(test_uim_entities) {
  unittest {
    testAttributeClass(new OOPDatetimeAttributeClass);
    testAttributeClass(OOPDatetimeAttributeClass);
  }
}