module uim.entities.attributeclasses.datetimes.birthdate;

@safe:
import uim.entities;

class DBirthDateAttributeClass : DDatetimeAttributeClass {
  mixin(AttributeClassThis!("BirthDateAttributeClass"));

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
mixin(AttributeClassCalls!"BirthDateAttributeClass");

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DBirthDateAttributeClass);
    testAttributeClass(BirthDateAttributeClass);
  }
}