module uim.domains.attributes.uuids.entities.users.team;

@safe:
import uim.domains;

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

version(test_uim_domains) {
  unittest {
  
    // TODO 
  }  
}