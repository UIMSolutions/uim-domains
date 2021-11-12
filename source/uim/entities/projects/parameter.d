module uim.entities.projects.parameter;

@safe:
import uim.entities;

// Group of undeleted system users and undeleted teams. ProjectParameters can be used to control access to specific objects.
class DPRJProjectParameter : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
      "organizationId": OOPAttributeLink("aplOrganization").descriptions(["en":"Unique identifier for the organization"]),
      "stateCode": OOPAttributeLookup("aplProjectParameter_StateCode").descriptions(["en":""]),
      "statusCode": OOPAttributeLookup("aplProjectParameter_StatusCode").descriptions(["en":""]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeInteger.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "allowSkillUpdateByResource": OOPAttributeString.descriptions(["en":"Allow resources to update their skills via the Project Finder Mobile app."]),
      "defaultOrganizationalUnit": OOPAttributeString.descriptions(["en":"Select the default organizational unit that will be used for new resources."]),
      "defaultWorkTemplate": OOPAttributeString.descriptions(["en":"Select the default work template for new projects."]),
      "invoiceFrequency": OOPAttributeString.descriptions(["en":"Select the default frequency for generating invoices."]),
      "projectManagerRole": OOPAttributeString.descriptions(["en":"Shows the default role to be used when a project manager is added to the project team."]),
      "projectResourceRequirementsVisibleToRe": OOPAttributeString.descriptions(["en":"Select whether project resource requirements are visible to resources."]),
      "resourceAllocationMode": OOPAttributeLookup("aplProjectParameter_ResourceAllocationMode").descriptions(["en":""]),
      "teamMemberRole": OOPAttributeString.descriptions(["en":"Shows the default role to be used when a team member is added to the project team."]),
    ]);
  }

  override string entityClass() { return "prjProjectParameter"; }
  override string entityClasses() { return "prjProjectParameters"; }

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
auto PRJProjectParameter() { return new DPRJProjectParameter; } 
auto PRJProjectParameter(Json json) { return new DPRJProjectParameter(json); } 

unittest {
  version(uim_entities) {
    assert(PRJProjectParameter);
  
  auto entity = PRJProjectParameter;
  // auto repository = OOPFileRepository("./tests");
/*   repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), "entities"~"/"~entity.entityClasses~"/"~entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}