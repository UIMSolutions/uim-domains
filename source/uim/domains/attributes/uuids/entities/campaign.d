module uim.domains.attributes.uuids.entities.campaign;

@safe:
import uim.domains;

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

version(test_uim_domains) {
  unittest {
    testAttribute(new DCampaignIdAttribute);
    testAttribute(CampaignIdAttribute);
  }
}