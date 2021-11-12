module uim.entities.projects.parameter_price_list;

@safe:
import uim.entities;

// Group of undeleted system users and undeleted teams. ProjectParameterPriceLists can be used to control access to specific objects.
class DPRJProjectParameterPriceList : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
      "organizationId": OOPAttributeLink("aplOrganization").descriptions(["en":"Unique identifier for the organization"]),
      "stateCode": OOPAttributeInteger.descriptions(["en":"Status of the Project Parameter Price List"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeInteger.descriptions(["en":"Reason for the status of the Project Parameter Price List"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeInteger.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "priceList": OOPAttributeString.descriptions(["en":"Select the price list that is being associated to the project parameter record."]),
      "projectParameter": OOPAttributeString.descriptions(["en":"Select the project parameter record that this price list linked to."]),
    ]);
  }

  override string entityClass() { return "prjProjectParameterPriceList"; }
  override string entityClasses() { return "prjProjectParameterPriceLists"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

  // mixin(GetEntity!("organization", "organizationId", "APLOrganization"));
}
auto PRJProjectParameterPriceList() { return new DPRJProjectParameterPriceList; } 
auto PRJProjectParameterPriceList(Json json) { return new DPRJProjectParameterPriceList(json); } 

unittest {
  version(uim_entities) {
    assert(PRJProjectParameterPriceList);
  
  auto entity = PRJProjectParameterPriceList;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}