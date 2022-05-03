module uim.entities.attributeclasses.uuids.entities.users.team;

@safe:
import uim.entities;

class DTeamIdAttributeClass : DEntityIdAttributeClass {
  mixin(AttributeClassThis!("TeamIdAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("teamId")
      .registerPath("teamid");
  }  
}
mixin(AttributeClassCalls!("TeamIdAttributeClass"));

version(test_uim_entities) {
  unittest {
  
    // TODO 
  }  
}