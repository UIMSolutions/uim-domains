module uim.domains.attributes.entities.entity;

@safe:
import uim.domains;

class DEntityAttribute : DAttribute {
  mixin(AttributeThis!("EntityAttribute"));

  override void initialize() {
    super.initialize;

    this
      .dataFormats(["time"]);
    // means.measurement.date
    // means.measurement.time
  }

  override DValue createValue() {
    return EntityValue(this); }
}
mixin(AttributeCalls!"EntityAttribute");

version(test_uim_domains) {
  unittest {
    testAttribute(new DEntityAttribute);
    testAttribute(EntityAttribute);
  }
}