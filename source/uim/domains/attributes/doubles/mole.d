module uim.domains.attributes.doubles.mole;

/* Unit of measure for amount in moles

Inheritance
any <- float <- double <- mole
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.amount
means.measurement.units.si.mole
has.measurement.fundamentalComponent.mole */

@safe:
import uim.domains;

class DMoleAttribute : DDoubleAttribute {
  mixin(AttributeThis!("MoleAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("mole")
      .registerPath("mole");
  }
}
mixin(AttributeCalls!("MoleAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}