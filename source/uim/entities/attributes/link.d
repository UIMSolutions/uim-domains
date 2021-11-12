module uim.entities.attributes.link;

@safe:
import uim.entities;

class DOOPAttributeLink : DOOPAttribute {
  this() { super(); }
  this(Json aValue) { this(); this.fromJson(aValue); }
  this(string aValue) { this(); this.fromString(aValue); }
  this(string colName, UUID id, size_t versionNumber = 0) { this(); this.value(colName, id, versionNumber); }

  string value() {  return collectionName ~":"~id.toString; }
  O value(this O)(string value) {
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
      default: break; }
    return cast(O)this; }
  unittest {
    version(uim_entities) {
      auto colName = "tests";
      auto id = randomUUID;
      auto vNumber = 1;
      auto link = OOPAttributeLink.value(colName~":"~id.toString~":"~to!string(vNumber));
      assert(link.collectionName == colName);
      assert(link.id == id);
      assert(link.versionNumber == vNumber);
      }}

  O value(this O)(string aColName, UUID anId, size_t versionNumber = 0) { 
    this.collectionName(aColName).id(anId).versionNumber(versionNumber); 
    return cast(O)this; }
  unittest {
    version(uim_entities) {
      auto colName = "tests";
      auto id = randomUUID;
      auto vNumber = 1;
      auto link = OOPAttributeLink.value(colName, id, vNumber);
      assert(link.collectionName == colName);
      assert(link.id == id);
      assert(link.versionNumber == vNumber);
      }}

  mixin(SProperty!("string", "collectionName"));
  unittest {
    version(uim_entities) {
      assert(OOPAttributeLink.collectionName("tests").collectionName == "tests");
      assert(OOPAttributeLink.collectionName("tests").collectionName("testsA").collectionName == "testsA");
      }}

  mixin(SProperty!("UUID", "id"));
  O id(this O)(string id) {
    if (id.isUUID) this.id(UUID(id));
    return cast(O)this; }
  unittest {
    version(uim_entities) {
      auto id = randomUUID;
      assert(OOPAttributeLink.id(id).id == id);
      assert(OOPAttributeLink.id(id.toString).id == id);
      }}

  O versionNumber(this O)(Json newNumber) {
    if (newValue == Json(null)) return cast(O)this; 
    this.versionNumber(newNumber.get!size_t);
    return cast(O)this; }
  O versionNumber(this O)(string newNumber) {
    if (newNumber.length > 0) this.versionNumber(to!size_t(newNumber));
    return cast(O)this; }
  mixin(SProperty!("size_t", "versionNumber"));
  unittest {
    version(uim_entities) {
      assert(OOPAttributeLink.versionNumber(1).versionNumber == 1);
      assert(OOPAttributeLink.versionNumber("1").versionNumber == 1);
      }}
  
  override Json toJson() {
    auto result = Json.emptyObject;
    result["collection"] = this.collectionName;
    result["id"] = this.id.toString;
    if (this.versionNumber > 0) result["versionNumber"] = this.versionNumber;
    return result; }
  unittest {
    version(uim_entities) {
      // TODO tests
      }}

  override void fromJson(Json newValue) {
    if (newValue == Json(null)) return;

    if ("collection" in newValue) this.collectionName(newValue["collection"].get!string); 
    if ("id" in newValue) this.id(newValue["id"].get!string); 
    if ("versionNumber" in newValue) this.versionNumber(newValue["versionNumber"].get!size_t);  }
  unittest {
    version(uim_entities) {
      auto link = OOPAttributeLink;
      link.fromJson(Json("Hello"));
      assert(link.value == "Hello");
      assert(link.value("Goodbye").value == "Goodbye");
      }}

  override string toString() { return value; }
  unittest {
    version(uim_entities) {
      // TODO Add tests
      }}

  override void fromString(string newValue) { this.value(newValue); }
  unittest {
    version(uim_entities) {
      // TODO Add tests
      }}
}
auto OOPAttributeLink() { return new DOOPAttributeLink(); }
auto OOPAttributeLink(Json aValue) { return new DOOPAttributeLink(aValue); }
auto OOPAttributeLink(string aValue) { return new DOOPAttributeLink(aValue); }
auto OOPAttributeLink(string colName, UUID id, size_t versionNumber = 0) { return new DOOPAttributeLink(colName, id, versionNumber); }

unittest {
  version(uim_entities) {
  }  
}