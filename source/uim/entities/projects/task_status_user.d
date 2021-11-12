module uim.entities.projects.task_status_user;

@safe:
import uim.entities;

// Group of undeleted system users and undeleted teams. ProjectTaskStatusUsers can be used to control access to specific objects.
class DPRJProjectTaskStatusUser : DOOPEntity {
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
      "projectTaskStatusUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier for entity instances"]),
      "stateCode": OOPAttributeInteger.descriptions(["en":"Status of the Project Task Status User"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeInteger.descriptions(["en":"Reason for the status of the Project Task Status User"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "bookableResource": OOPAttributeString.descriptions(["en":""]),
      "expectedCompletionDate": OOPAttributeDate.descriptions(["en":"Shows the expected completion date of the task entered by the assigned resource."]),
      "expectedHoursToComplete": OOPAttributeString.descriptions(["en":"Shows the expected hours to complete the task entered by the assigned resource."]),
      "isCompleted": OOPAttributeBoolean.descriptions(["en":"Shows if the task is completed."]),
      "percentComplete": OOPAttributeString.descriptions(["en":"Shows the reported percentage complete for the project task."]),
      "projectTaskId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Project Task associated with Project Task Status User."]),
      "projectTaskStatusIndicator": OOPAttributeString.descriptions(["en":"Indicates the status of the project task reported by the user resource."]),
      "projectTaskStatusIndicator_display": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "prjProjectTaskStatusUser"; }
  override string entityClasses() { return "prjProjectTaskStatusUsers"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto PRJProjectTaskStatusUser() { return new DPRJProjectTaskStatusUser; } 
auto PRJProjectTaskStatusUser(Json json) { return new DPRJProjectTaskStatusUser(json); } 

unittest {
  version(uim_entities) {
    assert(PRJProjectTaskStatusUser);

  auto entity = PRJProjectTaskStatusUser;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}