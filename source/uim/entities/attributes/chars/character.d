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

unittest {
  version(test_uim_entities) {  
    // TODO tests
  }
}