module uim.entities.attributes.strings.url;

@safe:
import uim.entities;

class DOOPUrlAttribute : DOOPStringAttribute {
  mixin(OOPAttributeThis!("OOPUrlAttribute", "url"));
/* 
  this(DOOPUrlAttribute attribute) { 
    super(attribute);
    this.value(attribute.value); } */
}
mixin(OOPAttributeCalls!("OOPUrlAttribute"));

version(test_uim_entities) {
  unittest {
  }  
}