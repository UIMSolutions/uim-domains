module uim.entities.attributes.strings.link;

@safe:
import uim.entities;

class DOOPLinkAttribute : DOOPStringAttribute {
  mixin(OOPAttributeThis!("OOPLinkAttribute", "link"));

/*   this(DOOPLinkAttribute attribute) { 
    super(attribute);
    this.value(attribute.value); } */
  this(string colName, UUID id, size_t versionNumber = 0) { this(); this.value(colName, id, versionNumber); }

  mixin(OProperty!("string", "collectionName"));
  version(test_uim_entities) {
    unittest {
      assert(OOPLinkAttribute.collectionName("tests").collectionName == "tests");
      assert(OOPLinkAttribute.collectionName("tests").collectionName("testsA").collectionName == "testsA");
      }}

  mixin(OProperty!("UUID", "id"));
  O id(this O)(string id) {
    if (id.isUUID) this.id(UUID(id));
    return cast(O)this; }
  version(test_uim_entities) {
    unittest {
      auto id = randomUUID;
      assert(OOPLinkAttribute.id(id).id == id);
      assert(OOPLinkAttribute.id(id.toString).id == id);
      }}

  O versionNumber(this O)(Json newNumber) {
    if (newValue == Json(null)) return cast(O)this; 
    this.versionNumber(newNumber.get!size_t);
    return cast(O)this; }
  O versionNumber(this O)(string newNumber) {
    if (newNumber.length > 0) this.versionNumber(to!size_t(newNumber));
    return cast(O)this; }

  mixin(OProperty!("size_t", "versionNumber"));
  version(test_uim_entities) {
    unittest {
      assert(OOPLinkAttribute.versionNumber(1).versionNumber == 1);
      assert(OOPLinkAttribute.versionNumber("1").versionNumber == 1);
      }}

  override string stringValue() {  return collectionName ~":"~id.toString; }

  override void value(Json newValue) {
    this.value(newValue.get!string); } 
  override void value(string value) {
    _id = UUID(); // Null id
    _collectionName = "";

    auto items = value.split(":").map!(a => a.strip).array;
    switch (items.length) {
      case 0: break;
      case 1: if (items[0].isUUID) _id = UUID(items[0]); 
        break;
      case 2: 
        if (items[0].length > 0) this.collectionName(items[0]); 
        if (items[1].isUUID) this.id(items[1]); 
        break;
      case 3: 
        if (items[0].length > 0) this.collectionName(items[0]); 
        if (items[1].isUUID) this.id(items[1]); 
        if (to!size_t(items[2]) > 0) this.versionNumber(items[2]); 
        break;
      default: break; }}
  version(test_uim_entities) {
    unittest {
      auto colName = "tests";
      auto id = randomUUID;
      auto vNumber = 1;
      auto link = OOPLinkAttribute(colName~":"~id.toString~":"~to!string(vNumber));
      assert(link.collectionName == colName);
      assert(link.id == id);
      assert(link.versionNumber == vNumber);
      }}

  void value(string aColName, UUID anId, size_t versionNumber = 0) { 
    this.collectionName(aColName).id(anId).versionNumber(versionNumber); }
  version(test_uim_entities) {
    unittest {
      auto colName = "tests";
      auto id = randomUUID;
      auto vNumber = 1;
      auto link = OOPLinkAttribute(colName, id, vNumber);
      assert(link.collectionName == colName);
      assert(link.id == id);
      assert(link.versionNumber == vNumber);
      }}
  
  override Json toJson() {
    auto result = Json.emptyObject;
    result["collection"] = this.collectionName;
    result["id"] = this.id.toString;
    if (this.versionNumber > 0) result["versionNumber"] = this.versionNumber;
    return result; }
  version(test_uim_entities) {
    unittest {
      // TODO tests
      }}

  override string toString() { return stringValue; }
  version(test_uim_entities) {
    unittest {
      // TODO Add tests
      }}
}
mixin(OOPAttributeCalls!("OOPLinkAttribute"));

auto OOPLinkAttribute(string colName, UUID id, size_t versionNumber = 0) { return new DOOPLinkAttribute(colName, id, versionNumber); }

unittest {
  version(test_uim_entities) {
  }  
}