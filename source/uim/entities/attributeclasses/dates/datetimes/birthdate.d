module uim.entities.attributeclasses.datetimes.birthdate;

@safe:
import uim.entities;

class DOOPBirthDateAttributeClass : DDatetimeAttributeClass {
  mixin(AttributeClassThis!("OOPBirthDateAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .dataFormats(["time"])
      .name("birthdate")
      .registerPath("birthdate");

  }
  override DValue createValue() {
    return DatetimeValue(this); }
}
mixin(AttributeClassCalls!"OOPBirthDateAttributeClass");

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DOOPBirthDateAttributeClass);
    testAttributeClass(OOPBirthDateAttributeClass);
  }
}