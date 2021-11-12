module uim.entities.projects.team;

@safe:
import uim.entities;

// Group of undeleted system users and undeleted teams. ProjectTeams can be used to control access to specific objects.
class DPRJProjectTeam : DOOPEntity {
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
      "projectTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for entity instances"]),
      "stateCode": OOPAttributeInteger.descriptions(["en":"Shows the status of the project team."]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeInteger.descriptions(["en":"Reason for the status of the Project Team"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "positionName": OOPAttributeString.descriptions(["en":"Type the name of the custom entity."]),
      "allocationMethod": OOPAttributeString.descriptions(["en":"Shows the allocation method used to book resources on the project (full capacity, percentage, and so on)."]),
      "allocationMethod_display": OOPAttributeString.descriptions(["en":""]),
      "assignedHours": OOPAttributeString.descriptions(["en":"Type the total assigned hours for project team member."]),
      "billingType": OOPAttributeString.descriptions(["en":"Select whether the team member is billable"]),
      "billingType_display": OOPAttributeString.descriptions(["en":""]),
      "bookableResourceId": OOPAttributeUUID.descriptions(["en":"Shows the resource."]),
      "calendarId": OOPAttributeUUID.descriptions(["en":"Shows the calendar used for staffing this project team."]),
      "from": OOPAttributeString.descriptions(["en":"Enter the resource team membership start date."]),
      "hardBookedHours": OOPAttributeString.descriptions(["en":"Hard Booked Hours"]),
      "hours": OOPAttributeString.descriptions(["en":"Duplicate for resource requirement"]),
      "hoursRequested": OOPAttributeString.descriptions(["en":"Shows the number of hours required of this team member on the project."]),
      "membershipStatus": OOPAttributeString.descriptions(["en":"Shows the membership status of this project team member."]),
      "membershipStatus_display": OOPAttributeString.descriptions(["en":""]),
      "MSProjectClientId": OOPAttributeUUID.descriptions(["en":"The id of the project team member in MS Project Client."]),
      "number": OOPAttributeString.descriptions(["en":"Shows the number of resources requested."]),
      "resourcingUnit": OOPAttributeString.descriptions(["en":"The organizational unit of the resource performing the work."]),
      "percentage": OOPAttributePercentage.descriptions(["en":"Duplicate for resource requirement"]),
      "project": OOPAttributeString.descriptions(["en":"Select the project that this team members are part of."]),
      "projectApprover": OOPAttributeString.descriptions(["en":"Select whether the team member can approve time and expenses."]),
      "requiredHours": OOPAttributeString.descriptions(["en":"Required hours of team member from team member requirement"]),
      "resourceCategory": OOPAttributeString.descriptions(["en":"Select the role this team member is playing in this team."]),
      "resourceRequirementId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Resource Requirement associated with Project Team Member."]),
      "roleDescription": OOPAttributeString.descriptions(["en":"Enter a description of the role for this team member."]),
      "softBookedHours": OOPAttributeString.descriptions(["en":"Soft Booked Hours"]),
      "to": OOPAttributeString.descriptions(["en":"Enter the end date of the resource membership in a team."]),
      "workTemplate": OOPAttributeString.descriptions(["en":"Template to use for generic resource's schedule. Will be ignored if its a user or facility resource"]),
      "applicantCount": OOPAttributeString.descriptions(["en":"Shows the number of applicants for this project team."]),
      "applicantCountDate": OOPAttributeDate.descriptions(["en":"Last Updated time of rollup field Applicant count."]),
      "applicantCountState": OOPAttributeString.descriptions(["en":"State of rollup field Applicant count."]),
      "applicantsAvailable": OOPAttributeString.descriptions(["en":"Shows if there are applicants available for this project team."]),
    ]);
  }

  override string entityClass() { return "prjProjectTeam"; }
  override string entityClasses() { return "prjProjectTeams"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto PRJProjectTeam() { return new DPRJProjectTeam; } 
auto PRJProjectTeam(Json json) { return new DPRJProjectTeam(json); } 

unittest {
  version(uim_entities) {
    assert(PRJProjectTeam);

  auto entity = PRJProjectTeam;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}