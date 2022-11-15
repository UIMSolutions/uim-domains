module uim.domains.attributes.doubles.seconds.micro;

/* Unit of measure for time in 10E-6 microseconds

any <- float <- double <- microsecond <- microMicroSecond
 
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.time
means.measurement.units.si.microsecond
has.measurement.fundamentalComponent.microsecond
means.measurement.duration.microseconds
means.measurement.prefix.micro */

@safe:
import uim.domains;

class DMicroSecondAttribute : DSecondAttribute {
  mixin(AttributeThis!("MicroSecondAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("microsecond")
      .registerPath("microsecond");
  }
}
mixin(AttributeCalls!("MicroSecondAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}