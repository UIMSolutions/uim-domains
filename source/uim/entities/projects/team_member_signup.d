module uim.entities.projects.team_member_signup;

@safe:
import uim.entities;

// Entity used to capture all resources that have applied for open position on projects.
class DPRJProjectTeamMemberSignUp : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
      "organizationId": OOPAttributeLink("aplOrganization").descriptions(["en":"Unique identifier for the organization"]),
      "stateCode": OOPAttributeInteger.descriptions(["en":"Status of the Project Team Member Sign-Up"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeInteger.descriptions(["en":"Reason for the status of the Project Team Member Sign-Up"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeInteger.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "defaultDescription": OOPAttributeString.descriptions(["en":"Type a description of the entity."]),
      "bookableResource": OOPAttributeString.descriptions(["en":"Shows the name of the resource signing up for this project team."]),
      "membershipStatus": OOPAttributeString.descriptions(["en":"Select the membership status."]),
      "membershipStatus_display": OOPAttributeString.descriptions(["en":""]),
      "teamMembership": OOPAttributeString.descriptions(["en":"Shows the team membership for the person signing up for this project team."]),
    ]);
  }

  override string entityClass() { return "prjProjectTeamMemberSignUp"; }
  override string entityClasses() { return "prjProjectTeamMemberSignUps"; }

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
auto PRJProjectTeamMemberSignUp() { return new DPRJProjectTeamMemberSignUp; } 
auto PRJProjectTeamMemberSignUp(Json json) { return new DPRJProjectTeamMemberSignUp(json); } 

unittest {
  version(uim_entities) {
    assert(PRJProjectTeamMemberSignUp);
  
  auto entity = PRJProjectTeamMemberSignUp;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}