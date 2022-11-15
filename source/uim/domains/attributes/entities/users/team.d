module uim.domains.attributes.entities.users.team;

@safe:
import uim.domains;

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

version(test_uim_domains) {
  unittest {
  
    // TODO 
  }  
}