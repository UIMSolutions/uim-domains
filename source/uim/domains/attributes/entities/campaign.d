module source.uim.domains.attributes.entities.campaign;

@safe:
import uim.domains;

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

version(test_uim_domains) {
  unittest {
    testAttribute(new DCampaignAttribute);
    testAttribute(CampaignAttribute);
  }
}