module uim.entities.projects.project;

@safe:
import uim.entities;

// Delivery entity in an engagement.
class DPRJProject : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfId": OOPAttributeUUID.descriptions(["en":"Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfId": OOPAttributeUUID.descriptions(["en":"Shows who last updated the record on behalf of another user."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "ownerId": OOPAttributeUUID.descriptions(["en":"Owner Id"]),
      "ownerIdType": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team."]),
      "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
      "owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier for the user that owns the record."]),
      "owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeInteger.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "projectId": OOPAttributeUUID.descriptions(["en":"Shows the entity instances."]),
      "stateCode": OOPAttributeInteger.descriptions(["en":"Status of the Project"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeInteger.descriptions(["en":"Reason for the status of the Project"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "subject": OOPAttributeString.descriptions(["en":"Type the name of the custom entity."]),
      "processId": OOPAttributeUUID.descriptions(["en":"Contains the id of the process associated with the entity."]),
      "stageId": OOPAttributeUUID.descriptions(["en":"Contains the id of the stage where the entity is located."]),
      "traversedPath": OOPAttributeString.descriptions(["en":"A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
      "actualDuratiOn": OOPAttributeDatetime.descriptions(["en":"Shows the actual duration of the project in minutes."]),
      "actualEnd": OOPAttributeString.descriptions(["en":"Enter the actual end time of the project."]),
      "actualExpenseCost": OOPAttributeString.descriptions(["en":"Shows the aggregate of actual expense cost on the project."]),
      "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Shows the currency associated with the entity."]),
      "exchangeRate": OOPAttributeString.descriptions(["en":"Shows the exchange rate for the currency associated with the entity with respect to the base currency."]),
      "actualexpensecostBase": OOPAttributeString.descriptions(["en":"Value of the Actual Expense Cost in base currency."]),
      "actualHours": OOPAttributeString.descriptions(["en":"Shows the total actual hours of the project"]),
      "actualLaborCost": OOPAttributeString.descriptions(["en":"Shows the aggregate of actual labor cost on the project."]),
      "actuallaborcostBase": OOPAttributeString.descriptions(["en":"Value of the Actual Labor Cost in base currency."]),
      "actualSales": OOPAttributeString.descriptions(["en":"Shows the actual sales value."]),
      "actualsalesBase": OOPAttributeString.descriptions(["en":"Shows the value of the actual sales in the base currency."]),
      "actualStart": OOPAttributeString.descriptions(["en":"Enter the actual start time of the project."]),
      "bulkGenerationStatus": OOPAttributeString.descriptions(["en":"The status of the bulk generation operations running on the project entity. If no operation is running, the value is null."]),
      "bulkGenerationStatus_display": OOPAttributeString.descriptions(["en":""]),
      "calendarId": OOPAttributeUUID.descriptions(["en":"Id of the calendar for the project."]),
      "comments": OOPAttributeString.descriptions(["en":"Enter the comments that are used to describe the current project status."]),
      "contractOrganizationalUnitId": OOPAttributeUUID.descriptions(["en":"Select the organizational unit sponsoring the project."]),
      "customer": OOPAttributeString.descriptions(["en":"Enter the customer who the project is associated with."]),
      "disableCreateOfTeamMemberForProjectManager": OOPAttributeString.descriptions(["en":"This is an internal field, mainly used during import so that we don't create a team member record for the project manager."]),
      "effortestimateatcompleteEAC": OOPAttributeString.descriptions(["en":"Shows the total of actual hours and the remaining hours."]),
      "projectExchangeRate": OOPAttributeString.descriptions(["en":"Exchange rate for the currency associated with the project with respect to the base currency."]),
      "isLinkedToMSProjectClient": OOPAttributeBoolean.descriptions(["en":"Specifies if the project is linked to a project in MS Project"]),
      "isTemplate": OOPAttributeBoolean.descriptions(["en":"Shows if the project is a project template."]),
      "linkedDocumentUrl": OOPAttributeUrl.descriptions(["en":"The URL for the linked document."]),
      "overallProjectStatus": OOPAttributeString.descriptions(["en":"Describes the project status."]),
      "overallProjectStatus_display": OOPAttributeString.descriptions(["en":""]),
      "estimatedExpenseCost": OOPAttributeString.descriptions(["en":"Shows the aggregate of the planned expense cost of all the associated tasks."]),
      "plannedexpensecostBase": OOPAttributeString.descriptions(["en":"Value of the Estimated Expense Cost in base currency."]),
      "estimatedHours": OOPAttributeString.descriptions(["en":"Shows the total estimate hours of the project."]),
      "estimatedLaborCost": OOPAttributeString.descriptions(["en":"Shows the aggregate of the planned labor cost of all the associated tasks."]),
      "plannedlaborcostBase": OOPAttributeString.descriptions(["en":"Value of the Estimated Labor Cost in base currency."]),
      "plannedSales": OOPAttributeString.descriptions(["en":"Shows the total planned sales."]),
      "plannedSalesBase": OOPAttributeString.descriptions(["en":"Shows the value of the planned sales in the base currency."]),
      "progress": OOPAttributeString.descriptions(["en":"Shows the actual hours divided by effort at estimate."]),
      "projectManager": OOPAttributeString.descriptions(["en":"Shows the project manager assigned to the project."]),
      "projectResourceRequirementsVisibleToResources": OOPAttributeString.descriptions(["en":"Indicates if the project resource requirements are visible to the resources assigned to the project."]),
      "projectTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Select the Team associated with Project."]),
      "projectTemplate": OOPAttributeString.descriptions(["en":"Select the project template behind the project."]),
      "remainingCost": OOPAttributeString.descriptions(["en":"Shows the difference between the estimated cost and the actual cost."]),
      "remainingCostBase": OOPAttributeString.descriptions(["en":"Shows the value of the remaining cost in the base currency."]),
      "remainingHours": OOPAttributeString.descriptions(["en":"Shows the difference between the estimate at completion (EAC) and the actual hours."]),
      "remainingSales": OOPAttributeString.descriptions(["en":"Shows the difference between estimated sales and the actual sales."]),
      "remainingSalesBase": OOPAttributeString.descriptions(["en":"Shows the value of the remaining sales in the base currency."]),
      "salesOrderId": OOPAttributeUUID.descriptions(["en":"Shows the contract for this project."]),
      "scheduledDurationMinutes": OOPAttributeString.descriptions(["en":"Shows the scheduled duration of the project, specified in minutes."]),
      "estimatedFinishDate": OOPAttributeDate.descriptions(["en":"Enter the scheduled end time of the project."]),
      "scheduleStartDate": OOPAttributeDate.descriptions(["en":"Enter the scheduled start time of the project."]),
      "schedulePerformance": OOPAttributeString.descriptions(["en":"Describes the schedule performance of the project."]),
      "schedulePerformance_display": OOPAttributeString.descriptions(["en":""]),
      "scheduleVariance": OOPAttributeString.descriptions(["en":"Shows the difference between the planned effort and the estimate at completion (EAC)."]),
      "stageName": OOPAttributeString.descriptions(["en":"Shows the stage of the project (Deprecated in v3.0)."]),
      "statusUpdatedOn": OOPAttributeDatetime.descriptions(["en":"Shows the most recent update on a status field(comments or overall project status)."]),
      "totalActualCost": OOPAttributeString.descriptions(["en":"Shows the aggregated cost from actuals on the project."]),
      "totalActualCostBase": OOPAttributeString.descriptions(["en":"Shows the value of the total actual cost in the base currency."]),
      "totalPlannedCost": OOPAttributeString.descriptions(["en":"Shows the aggregate of the total planned cost of all the associated tasks."]),
      "totalPlannedCostBase": OOPAttributeString.descriptions(["en":"Shows the value of the total planned cost in the base currency."]),
      "wbsDuratiOn": OOPAttributeDatetime.descriptions(["en":"Shows the work breakdown structure (WBS) duration in days."]),
      "workHourTemplate": OOPAttributeString.descriptions(["en":"Select the work hour template used to create the project calendar."]),
      "costConsumptiOn": OOPAttributeDatetime.descriptions(["en":"Shows the actual cost divided by the estimated cost at completion."]),
      "costEstimateAtComplete": OOPAttributeString.descriptions(["en":"Sum of Actual Cost and Remaining cost"]),
      "costEstimateAtCompleteBase": OOPAttributeString.descriptions(["en":"Value of the Cost estimate at completion (EAC) in base currency."]),
      "costPerformence": OOPAttributeString.descriptions(["en":""]),
      "costPerformence_display": OOPAttributeString.descriptions(["en":""]),
      "costVariance": OOPAttributeString.descriptions(["en":"Variance between the estimated cost and the forecasted cost based on the estimate at completion (EAC)."]),
      "costVarianceBase": OOPAttributeString.descriptions(["en":"Shows the value of the cost variance in the base currency."]),
      "salesConsumptiOn": OOPAttributeDatetime.descriptions(["en":"Shows the actual sales divided by the estimated sales."]),
      "salesEstimateAtCompleteEAC": OOPAttributeString.descriptions(["en":"Shows the total of actual and remaining sales."]),
      "salesEstimateAtCompleteEACBase": OOPAttributeString.descriptions(["en":"Value of the Sales Estimate At Complete (EAC) in base currency."]),
      "salesVariance": OOPAttributeString.descriptions(["en":"Shows the difference between the planned sales and the sales estimate at completion (EAC)."]),
      "salesVarianceBase": OOPAttributeString.descriptions(["en":"Shows the value of the sales variance in the base currency."]),
      "teamSize": OOPAttributeString.descriptions(["en":"Shows the total number of team members assigned to this project"]),
      "teamsizeDate": OOPAttributeDate.descriptions(["en":"Last Updated time of rollup field Team Size."]),
      "teamsizeState": OOPAttributeString.descriptions(["en":"State of rollup field Team Size."]),
    ]);
  }

  override string entityClass() { return "prjProject"; }
  override string entityClasses() { return "prjProjects"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto PRJProject() { return new DPRJProject; } 
auto PRJProject(Json json) { return new DPRJProject(json); } 

unittest {
  version(uim_entities) {
    assert(PRJProject);
  
  auto entity = PRJProject;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}