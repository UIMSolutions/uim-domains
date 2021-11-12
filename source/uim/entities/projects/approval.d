module uim.entities.projects.approval;

@safe:
import uim.entities;

// Group of undeleted system users and undeleted teams. Approvals can be used to control access to specific objects.
class DPRJProjectApproval : DOOPEntity {
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
      "projectApprovalId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances"]),
      "stateCode": OOPAttributeInteger.descriptions(["en":"Status of the ApprovalsTable"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeInteger.descriptions(["en":"Reason for the status of the ApprovalsTable"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "approvedBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows the name of the approver."]),
      "approvedOn": OOPAttributeDatetime.descriptions(["en":"Shows the date of the approval."]),
      "billingType": OOPAttributeString.descriptions(["en":"Billing type for the project approval line."]),
      "billingType_display": OOPAttributeString.descriptions(["en":""]),
      "bookableResource": OOPAttributeString.descriptions(["en":"Shows the resource that the entry is submitted for."]),
      "costPrice": OOPAttributeString.descriptions(["en":"Shows the cost price of the transaction."]),
      "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Shows the currency associated with the entity."]),
      "exchangeRate": OOPAttributeString.descriptions(["en":"Exchange rate for the currency associated with the entity with respect to the base currency."]),
      "costPriceBase": OOPAttributeString.descriptions(["en":"Value of the Cost Price in base currency."]),
      "costQuantity": OOPAttributeString.descriptions(["en":"Shows the hours submitted for the transaction."]),
      "date": OOPAttributeString.descriptions(["en":"Shows the date of the transaction."]),
      "entryType": OOPAttributeString.descriptions(["en":"Shows the entry type of the transaction."]),
      "entryType_display": OOPAttributeString.descriptions(["en":""]),
      "expenseCategory": OOPAttributeString.descriptions(["en":"Shows the expense category of the transaction."]),
      "expenseEntry": OOPAttributeString.descriptions(["en":"Expense Entry Id."]),
      "externalComments": OOPAttributeString.descriptions(["en":"Shows the external comments entered for the transaction."]),
      "hasReceipt": OOPAttributeString.descriptions(["en":"Shows whether the transaction has a receipt."]),
      "internalComments": OOPAttributeString.descriptions(["en":"Shows the internal comments entered for the transaction."]),
      "journalTransactiOn": OOPAttributeDatetime.descriptions(["en":"Shows whether the transaction was entered by a journal."]),
      "manager": OOPAttributeString.descriptions(["en":"Shows the manager of the person who submitted the transaction."]),
      "project": OOPAttributeString.descriptions(["en":"Shows the project for the transaction."]),
      "projectTask": OOPAttributeString.descriptions(["en":"Shows the project task for the transaction."]),
      "recordStage": OOPAttributeString.descriptions(["en":"Shows the stage of the record."]),
      "recordStage_display": OOPAttributeString.descriptions(["en":""]),
      "referenceExpenseId": OOPAttributeUUID.descriptions(["en":"Shows the reference ID for the expense entry."]),
      "referenceJournalLine": OOPAttributeString.descriptions(["en":"Shows the journal line ID for the journal transaction."]),
      "referenceTimeId": OOPAttributeUUID.descriptions(["en":""]),
      "resourceCategory": OOPAttributeString.descriptions(["en":"Shows the role for the resource for this transaction."]),
      "salesPrice": OOPAttributeString.descriptions(["en":"Shows the sales price of the transaction."]),
      "salesPriceBase": OOPAttributeString.descriptions(["en":"Value of the Sales Price in base currency."]),
      "salesQuantity": OOPAttributeString.descriptions(["en":"Shows the billable hours for the transaction."]),
      "submittedBy": OOPAttributeLink("aplUser").descriptions(["en":"Resource that has submitted the entry for approval."]),
      "timeEntry": OOPAttributeString.descriptions(["en":"Time Entry Id."]),
      "transactionCategory": OOPAttributeString.descriptions(["en":"Shows the transaction category."]),
      "costAmount": OOPAttributeString.descriptions(["en":"Shows the cost amount of the transaction."]),
      "costAmountBase": OOPAttributeString.descriptions(["en":"Value of the Cost Amount in base currency."]),
      "salesAmount": OOPAttributeString.descriptions(["en":"Shows the sales amount of the transaction."]),
      "salesAmountBase": OOPAttributeString.descriptions(["en":"Value of the Sales Amount in base currency."]),
    ]);
  }

  override string entityClass() { return "prjProjectApproval"; }
  override string entityClasses() { return "prjProjectApprovals"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto PRJProjectApproval() { return new DPRJProjectApproval; } 
auto PRJProjectApproval(Json json) { return new DPRJProjectApproval(json); } 

unittest {
  version(uim_entities) {
    assert(PRJProjectApproval);
  
  auto entity = PRJProjectApproval;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}