module uim.entities.projects.price_list;

@safe:
import uim.entities;

// Group of undeleted system users and undeleted teams. ProjectPriceLists can be used to control access to specific objects.
class DPRJProjectPriceList : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "ownerId": OOPAttributeUUID.descriptions(["en":"Owner Id"]),
      "ownerIdType": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team."]),
      "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
      "owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier for the user that owns the record."]),
      "owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeInteger.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "projectPriceListId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances"]),
      "stateCode": OOPAttributeInteger.descriptions(["en":"Status of the Project Price List"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeInteger.descriptions(["en":"Reason for the status of the Project Price List"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "priceList": OOPAttributeString.descriptions(["en":"Shows the name of the project price list."]),
      "project": OOPAttributeString.descriptions(["en":"Shows the project for the project price list."]),
    ]);
  }

  override string entityClass() { return "prjProjectPriceList"; }
  override string entityClasses() { return "prjProjectPriceLists"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto PRJProjectPriceList() { return new DPRJProjectPriceList; } 
auto PRJProjectPriceList(Json json) { return new DPRJProjectPriceList(json); } 

unittest {
  version(uim_entities) {
    assert(PRJProjectPriceList);

  auto entity = PRJProjectPriceList;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}