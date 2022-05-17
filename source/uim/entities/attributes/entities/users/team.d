module uim.entities.attributes.entities.users.team;

@safe:
import uim.entities;

class DTeamAttribute : DEntityAttribute {
  mixin(AttributeThis!("TeamAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("team")
      .registerPath("team");
  }  
}
mixin(AttributeCalls!("TeamAttribute"));

version(test_uim_entities) {
  unittest {
  
    // TODO 
  }  
}