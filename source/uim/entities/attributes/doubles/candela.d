module uim.entities.attributes.doubles.candela;

// candela
// Unit of measure for luminous intensity in candelas

@safe:
import uim.entities;

class DCandelaAttribute : DDoubleAttribute {
  mixin(AttributeThis!("CandelaAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("candela")
      .registerPath("candela");
  }
}
mixin(AttributeCalls!("CandelaAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}