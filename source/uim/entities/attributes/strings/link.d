module uim.entities.attributes.strings.link;

@safe:
import uim.entities;

class DOOPAttributeLink : DOOPAttributeString {
  this() { super(); }
  this(DOOPAttributeLink attribute) { 
    super(attribute);
    this.value(attribute.value); }
  this(Json aValue) { this(); super.value(aValue); }
  this(string aValue) { this(); this.value(aValue); }
  this(string colName, UUID id, size_t versionNumber = 0) { this(); this.value(colName, id, versionNumber); }

  mixin(OProperty!("string", "collectionName"));
  unittest {
    version(uim_entities) {
      assert(OOPAttributeLink.collectionName("tests").collectionName == "tests");
      assert(OOPAttributeLink.collectionName("tests").collectionName("testsA").collectionName == "testsA");
      }}

  mixin(OProperty!("UUID", "id"));
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

  mixin(OProperty!("size_t", "versionNumber"));
  unittest {
    version(uim_entities) {
      assert(OOPAttributeLink.versionNumber(1).versionNumber == 1);
      assert(OOPAttributeLink.versionNumber("1").versionNumber == 1);
      }}

  override string value() {  return collectionName ~":"~id.toString; }
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
  unittest {
    version(uim_entities) {
      auto colName = "tests";
      auto id = randomUUID;
      auto vNumber = 1;
      auto link = OOPAttributeLink(colName~":"~id.toString~":"~to!string(vNumber));
      assert(link.collectionName == colName);
      assert(link.id == id);
      assert(link.versionNumber == vNumber);
      }}

  void value(string aColName, UUID anId, size_t versionNumber = 0) { 
    this.collectionName(aColName).id(anId).versionNumber(versionNumber); }
  unittest {
    version(uim_entities) {
      auto colName = "tests";
      auto id = randomUUID;
      auto vNumber = 1;
      auto link = OOPAttributeLink(colName, id, vNumber);
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
  unittest {
    version(uim_entities) {
      // TODO tests
      }}

  override string toString() { return value; }
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