module uim.entities.projects.service_approval;

@safe:
import uim.entities;

// Group of undeleted system users and undeleted teams. ProjectServiceApprovals can be used to control access to specific objects.
class DPRJProjectServiceApproval : DOOPEntity {
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
      "actualEnd": OOPAttributeString.descriptions(["en":"Actual end time of the activity."]),
      "activityId": OOPAttributeLink("aplActivity").descriptions(["en":"Unique identifier of the activity."]),
      "isBilled": OOPAttributeBoolean.descriptions(["en":"Information regarding whether the activity was billed as part of resolving a case."]),
      "activityTypeCode": OOPAttributeInteger.descriptions(["en":"Type of activity."]),
      "activityTypeCode_display": OOPAttributeString.descriptions(["en":""]),
      "stateCode": OOPAttributeInteger.descriptions(["en":"Status of the activity."]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "scheduledEnd": OOPAttributeString.descriptions(["en":"Scheduled end time of the activity."]),
      "scheduledDurationMinutes": OOPAttributeString.descriptions(["en":"Scheduled duration of the activity, specified in minutes."]),
      "actualDurationMinutes": OOPAttributeString.descriptions(["en":"Actual duration of the activity in minutes."]),
      "statusCode": OOPAttributeInteger.descriptions(["en":"Reason for the status of the activity."]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "actualStart": OOPAttributeString.descriptions(["en":"Actual start time of the activity."]),
      "priorityCode": OOPAttributeInteger.descriptions(["en":"Priority of the activity."]),
      "priorityCode_display": OOPAttributeString.descriptions(["en":""]),
      "regardingObjectId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the object with which the activity is associated."]),
      "subject": OOPAttributeString.descriptions(["en":"Subject associated with the activity."]),
      "isWorkflowCreated": OOPAttributeBoolean.descriptions(["en":"Information regarding whether the activity was created from a workflow rule."]),
      "scheduledStart": OOPAttributeString.descriptions(["en":"Scheduled start time of the activity."]),
      "instanceTypeCode": OOPAttributeInteger.descriptions(["en":"Type of instance of a recurring series."]),
      "instanceTypeCode_display": OOPAttributeString.descriptions(["en":""]),
      "seriesId": OOPAttributeUUID.descriptions(["en":"Shows the ID of the recurring series of an instance."]),
      "isRegularActivity": OOPAttributeBoolean.descriptions(["en":"Information regarding whether the activity is a regular activity type or event type."]),
      "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Unique identifier of the currency associated with the activitypointer."]),
      "exchangeRate": OOPAttributeString.descriptions(["en":"Exchange rate for the currency associated with the activitypointer with respect to the base currency."]),
      "leftVoiceMail": OOPAttributeString.descriptions(["en":"Left the voice mail"]),
      "community": OOPAttributeString.descriptions(["en":"Shows how contact about the social activity originated, such as from Twitter or Facebook. This field is read-only."]),
      "community_display": OOPAttributeString.descriptions(["en":""]),
      "traversedPath": OOPAttributeString.descriptions(["en":"For internal use only."]),
      "isMapiPrivate": OOPAttributeBoolean.descriptions(["en":"For internal use only."]),
      "exchangeWebLink": OOPAttributeString.descriptions(["en":"Shows the web link of Activity of type email."]),
      "exchangeItemId": OOPAttributeUUID.descriptions(["en":"The message id of activity which is returned from Exchange Server."]),
      "deliveryPriorityCode": OOPAttributeInteger.descriptions(["en":"Priority of delivery of the activity to the email server."]),
      "deliveryPriorityCode_display": OOPAttributeString.descriptions(["en":""]),
      "sentOn": OOPAttributeDatetime.descriptions(["en":"Date and time when the activity was sent."]),
      "deliveryLastAttemptedOn": OOPAttributeDatetime.descriptions(["en":"Date and time when the delivery of the activity was last attempted."]),
      "senderMailboxId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the mailbox associated with the sender of the email message."]),
      "postponeActivityProcessingUntil": OOPAttributeString.descriptions(["en":"For internal use only."]),
      "processId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the Process."]),
      "stageId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the Stage."]),
      "activityAdditionalParams": OOPAttributeString.descriptions(["en":"Additional information provided by the external application as JSON. For internal use only."]),
      "SLAId": OOPAttributeLink("aplSLA").descriptions(["en":"Choose the service level agreement (SLA) that you want to apply to the case record."]),
      "SLAInvokedId": OOPAttributeUUID.descriptions(["en":"Last SLA that was applied to this case. This field is for internal use only."]),
      "onHoldTime": OOPAttributeTime.descriptions(["en":"Shows how long, in minutes, that the record was on hold."]),
      "lastOnHoldTime": OOPAttributeTime.descriptions(["en":"Contains the date and time stamp of the last on hold time."]),
      "sortDate": OOPAttributeDate.descriptions(["en":"Shows the date and time by which the activities are sorted."]),
      "serviceId": OOPAttributeUUID.descriptions(["en":"Unique identifier of an associated service."]),
      "from": OOPAttributeString.descriptions(["en":"Person who the activity is from."]),
      "to": OOPAttributeString.descriptions(["en":"Person who is the receiver of the activity."]),
      "CC": OOPAttributeString.descriptions(["en":"Carbon-copy (cc) recipients of the activity."]),
      "BCC": OOPAttributeString.descriptions(["en":"Blind Carbon-copy (bcc) recipients of the activity."]),
      "requiredAttendees": OOPAttributeString.descriptions(["en":"List of required attendees for the activity."]),
      "optionalAttendees": OOPAttributeString.descriptions(["en":"List of optional attendees for the activity."]),
      "organizer": OOPAttributeString.descriptions(["en":"Person who organized the activity."]),
      "resources": OOPAttributeString.descriptions(["en":"Users or facility/equipment that are required for the activity."]),
      "customers": OOPAttributeString.descriptions(["en":"Customer with which the activity is associated."]),
      "partners": OOPAttributeString.descriptions(["en":"Outsource vendor with which activity is associated."]),
      "approvalStatus": OOPAttributeString.descriptions(["en":"Shows the status of the approval."]),
      "approvalStatus_display": OOPAttributeString.descriptions(["en":""]),
      "characteristic": OOPAttributeString.descriptions(["en":"Skill for approval"]),
    ]);
  }

  override string entityClass() { return "prjProjectServiceApproval"; }
  override string entityClasses() { return "prjProjectServiceApprovals"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

  // mixin(GetEntity!("activity", "activityId", "APLActivity"));
}
auto PRJProjectServiceApproval() { return new DPRJProjectServiceApproval; } 
auto PRJProjectServiceApproval(Json json) { return new DPRJProjectServiceApproval(json); } 

unittest {
  version(uim_entities) {
    assert(PRJProjectServiceApproval);

  auto entity = PRJProjectServiceApproval;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}