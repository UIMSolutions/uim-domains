module uim.entities.projects.task;

@safe:
import uim.entities;

// Tasks related to project.
class DPRJProjectTask : DOOPEntity {
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
      "stateCode": OOPAttributeInteger.descriptions(["en":"Status of the Project Task"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeInteger.descriptions(["en":"Reason for the status of the Project Task"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "projectTaskName": OOPAttributeString.descriptions(["en":"Type the name of the custom entity."]),
      "actualCost": OOPAttributeString.descriptions(["en":"Enter the value of the actual cost consumed based on work reported to be completed on the task."]),
      "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Shows the currency associated with the entity."]),
      "exchangeRate": OOPAttributeString.descriptions(["en":"Shows the exchange rate for the currency associated with the entity with respect to the base currency."]),
      "actualCostBase": OOPAttributeString.descriptions(["en":"Value of the Actual Cost in base currency."]),
      "actualDuration": OOPAttributeString.descriptions(["en":"Shows the actual duration of the project task in days"]),
      "actualEffort": OOPAttributeString.descriptions(["en":"Shows the hours submitted against the task."]),
      "actualEndDateTime": OOPAttributeDatetime.descriptions(["en":"Enter the actual end time of the project task."]),
      "actualSales": OOPAttributeString.descriptions(["en":"Actual Sales Amount"]),
      "actualsalesBase": OOPAttributeString.descriptions(["en":"Shows the value of the actual sales in the base currency."]),
      "actualStart": OOPAttributeString.descriptions(["en":"Enter the actual start time of the project task."]),
      "aggregationDirection": OOPAttributeString.descriptions(["en":"Shows whether the aggregation is happening upstream or downstream."]),
      "aggregationDirection_display": OOPAttributeString.descriptions(["en":""]),
      "assignedResources": OOPAttributeString.descriptions(["en":"Type the project team members that are assigned to task."]),
      "assignedTeamMembers": OOPAttributeString.descriptions(["en":"Select the project team member that has been assigned to a task."]),
      "autoScheduling": OOPAttributeString.descriptions(["en":"Shows whether auto scheduling was used for this task."]),
      "costEstimateContour": OOPAttributeString.descriptions(["en":"The cost estimate contour for the task"]),
      "duration": OOPAttributeString.descriptions(["en":"Shows the duration in days for the task."]),
      "effort": OOPAttributeString.descriptions(["en":"Shows the effort hours required for the task."]),
      "effortContour": OOPAttributeString.descriptions(["en":"The effort distribution"]),
      "effortEstimateAtComplete": OOPAttributeString.descriptions(["en":"Shows the forecast of total effort to complete the task."]),
      "isLineTask": OOPAttributeBoolean.descriptions(["en":"Shows whether the task is a line task"]),
      "isMilestone": OOPAttributeBoolean.descriptions(["en":"Show whether this task is a milestone."]),
      "MSProjectClientId": OOPAttributeUUID.descriptions(["en":"The id of the project task in MS Project Client."]),
      "numberOfResources": OOPAttributeString.descriptions(["en":"Shows the number of resources that are estimated for the task. This is not the number of resources assigned to the task."]),
      "parentTask": OOPAttributeString.descriptions(["en":"Select the summary or parent task in the hierarchy that contains a child task."]),
      "plannedCost": OOPAttributeString.descriptions(["en":"Enter the value of the cost the service provider will incur based on the estimated work and cost rates in the pricelist."]),
      "plannedCostBase": OOPAttributeString.descriptions(["en":"Enter the value of cost estimated in base currency."]),
      "plannedSales": OOPAttributeString.descriptions(["en":"Planned Sales Amount"]),
      "plannedSalesBase": OOPAttributeString.descriptions(["en":"Shows the value of the planned sales in the base currency."]),
      "pluginProcessingData": OOPAttributeString.descriptions(["en":"Processing data for the plugin pipeline"]),
      "progress": OOPAttributeString.descriptions(["en":"Enter the percentage indicating work completed."]),
      "project": OOPAttributeString.descriptions(["en":"Select the project name."]),
      "remainingCost": OOPAttributeString.descriptions(["en":"Enter the cost left over that can be consumed for future work."]),
      "remainingCostBase": OOPAttributeString.descriptions(["en":"Shows the value of the remaining cost in the base currency."]),
      "remainingHours": OOPAttributeString.descriptions(["en":"Shows the hours remaining to complete the task."]),
      "remainingSales": OOPAttributeString.descriptions(["en":"Remaining Sales Amount"]),
      "remainingSalesBase": OOPAttributeString.descriptions(["en":"Shows the value of the remaining sales in the base currency."]),
      "requestedHours": OOPAttributeString.descriptions(["en":"Shows the hours assigned by generic resource."]),
      "resourceCategory": OOPAttributeString.descriptions(["en":"Select the resource role for the task."]),
      "resourceOrganizationalUnitId": OOPAttributeUUID.descriptions(["en":"Select the organizational unit of the resource who should perform the work."]),
      "resourceUtilization": OOPAttributeString.descriptions(["en":"Shows the utilization units for a resource that is assigned to a project task"]),
      "salesEstimateContour": OOPAttributeString.descriptions(["en":"The sales estimate contour"]),
      "scheduledDurationMinutes": OOPAttributeString.descriptions(["en":"Shows the scheduled duration of the project task, specified in minutes."]),
      "dueDate": OOPAttributeDate.descriptions(["en":"Enter the scheduled end time of the project."]),
      "scheduledHours": OOPAttributeString.descriptions(["en":"Shows the scheduled hours for the task."]),
      "scheduleStartDate": OOPAttributeDate.descriptions(["en":"Enter the scheduled start time of the project task."]),
      "scheduleVariance": OOPAttributeString.descriptions(["en":"Shows the variance between the estimated work and the forecasted work based on the estimate at completion (EAC)."]),
      "skipUpdateEstimateLine": OOPAttributeString.descriptions(["en":"Internal flag to avoid the update process on the estimate lines of the project task"]),
      "transactionCategory": OOPAttributeString.descriptions(["en":"Select the transaction category for the task."]),
      "WBSId": OOPAttributeUUID.descriptions(["en":"Shows the ID of the task in the work breakdown structure (WBS)."]),
      "processId": OOPAttributeUUID.descriptions(["en":"Contains the id of the process associated with the entity."]),
      "stageId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the Stage."]),
      "traversedPath": OOPAttributeString.descriptions(["en":"A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
      "costAtCompleteEstimate": OOPAttributeString.descriptions(["en":"Enter the forecast of the total cost to complete the task."]),
      "costAtCompleteEstimateBase": OOPAttributeString.descriptions(["en":"Value of the Cost estimate at complete (EAC) in base currency."]),
      "costConsumptionPercentage": OOPAttributePercentage.descriptions(["en":"Enter the consumption of the total cost in percentage."]),
      "salesConsumptionPercentage": OOPAttributePercentage.descriptions(["en":"Shows the sales consumption percentage for this task."]),
      "salesEstimateAtComplete": OOPAttributeString.descriptions(["en":"Shows the sales estimate at the completion of this task."]),
      "salesEstimateAtCompleteBase": OOPAttributeString.descriptions(["en":"Value of the Sales Estimate At Complete (EAC) in base currency."]),
      "salesVariance": OOPAttributeString.descriptions(["en":"Shows the sales variance for this task."]),
      "salesVarianceBase": OOPAttributeString.descriptions(["en":"Shows the value of the sales variance in the base currency."]),
      "varianceOfCost": OOPAttributeString.descriptions(["en":"Enter the variance between the estimated cost and the forecasted cost based on the estimate at completion (EAC)."]),
      "varianceOfCostBase": OOPAttributeString.descriptions(["en":"Shows the value of the cost variance in the base currency."]),
    ]);
  }

  override string entityClass() { return "prjProjectTask"; }
  override string entityClasses() { return "prjProjectTasks"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto PRJProjectTask() { return new DPRJProjectTask; } 
auto PRJProjectTask(Json json) { return new DPRJProjectTask(json); } 

unittest {
  version(uim_entities) {
    assert(PRJProjectTask);
  
  auto entity = PRJProjectTask;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}