module source.uim.entities.attributes.entities.campaign;

@safe:
import uim.entities;

class DCampaignAttribute : DEntityAttribute {
  mixin(AttributeThis!("CampaignAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("campaign")
      .registerPath("campaign");
  }  
}
mixin(AttributeCalls!("CampaignAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DCampaignAttribute);
    testAttribute(CampaignAttribute);
  }
}