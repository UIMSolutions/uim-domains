module uim.entities.attributes.elements.element;

@safe:
import uim.entities;

class DElementAttribute : DAttribute {
  mixin(AttributeThis!("ElementAttribute"));

  override void initialize() {
    super.initialize;
  }

  override DValue createValue() {
    return ElementValue(this); }
}
mixin(AttributeCalls!"ElementAttribute");

version(test_uim_entities) {
  unittest {
    testAttribute(new DElementAttribute);
    testAttribute(ElementAttribute);
  }
}