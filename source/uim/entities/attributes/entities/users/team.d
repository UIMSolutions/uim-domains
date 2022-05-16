module uim.entities.attributes.uuids.entities.users.team;

@safe:
import uim.entities;

class DTeamIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("TeamIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("teamId")
      .registerPath("teamid");
  }  
}
mixin(AttributeCalls!("TeamIdAttribute"));

version(test_uim_entities) {
  unittest {
  
    // TODO 
  }  
}