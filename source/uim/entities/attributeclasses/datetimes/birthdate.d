module uim.entities.attributeclasses.datetimes.birthdate;

@safe:
import uim.entities;

class DOOPBirthDateAttributeClass : DOOPDatetimeAttributeClass {
  mixin(OOPAttribAttributeClassThisuteThis!("OOPBirthDateAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .dataFormats(["time"]);
    // means.measurement.date
    // means.measurement.time
    // means.demographic.birthDate
  }
}
mixin(AttributeClassCalls!"OOPBirthDateAttributeClass");

version(test_uim_entities) {
  unittest {
    testAttributeClass(new OOPBirthDateAttributeClass);
    testAttributeClass(OOPBirthDateAttributeClass);
  }
}