module uim.entities.attributes.uuids.entities.campaign;

@safe:
import uim.entities;

class DCampaignIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("CampaignIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("campaignId")
      .registerPath("campaignid");
  }  
}
mixin(AttributeCalls!("CampaignIdAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DCampaignIdAttribute);
    testAttribute(CampaignIdAttribute);
  }
}