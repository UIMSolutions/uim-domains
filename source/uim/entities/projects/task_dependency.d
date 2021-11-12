module uim.entities.projects.task_dependency;

@safe:
import uim.entities;

// Dependency data between tasks.
class DPRJProjectTaskDependency : DOOPEntity {
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
      "projectTaskDependencyId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances"]),
      "stateCode": OOPAttributeInteger.descriptions(["en":"Status of the Project Task Dependency"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeInteger.descriptions(["en":"Reason for the status of the Project Task Dependency"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "linkType": OOPAttributeString.descriptions(["en":"Select the 'Finish to Start' type of dependency."]),
      "linkType_display": OOPAttributeString.descriptions(["en":""]),
      "predecessorTask": OOPAttributeString.descriptions(["en":"Select the task that other tasks are dependent on."]),
      "project": OOPAttributeString.descriptions(["en":"Select the project name."]),
      "successorTask": OOPAttributeString.descriptions(["en":"Select the task that has a dependency on another task."]),
    ]);
  }

  override string entityClass() { return "prjProjectTaskDependency"; }
  override string entityClasses() { return "prjProjectTaskDependencies"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto PRJProjectTaskDependency() { return new DPRJProjectTaskDependency; } 
auto PRJProjectTaskDependency(Json json) { return new DPRJProjectTaskDependency(json); } 

unittest {
  version(uim_entities) {
    assert(PRJProjectTaskDependency);

  auto entity = PRJProjectTaskDependency;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}