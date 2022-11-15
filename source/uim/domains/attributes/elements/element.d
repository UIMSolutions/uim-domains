module uim.domains.attributes.elements.element;

@safe:
import uim.domains;

class Attribute : DAttribute {
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
    testAttribute(new Attribute);
    testAttribute(ElementAttribute);
  }
}