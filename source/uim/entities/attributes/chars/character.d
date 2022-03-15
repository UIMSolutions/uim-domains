module uim.entities.attributes.chars.character;

@safe:
import uim.entities;

class DOOPCharacterAttribute : DOOPAttribute {
  mixin(OOPAttributeThis!("OOPCharacterAttribute"));

  override void initialize() {
    super.initialize;

    this
      .isBig(true)
      .isCharacter(true);
  }
}
mixin(OOPAttributeCalls!("OOPCharacterAttribute"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}