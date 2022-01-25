module uim.entities.repository;

/* @safe: 
import uim.entities;

class DOOPRepository {
  this() {}

  this(string newUrl) {
      this();
      this.url(newUrl);
  }

  mixin(OProperty!("string", "url"));
  unittest {
  version(test_uim_entities) {  
    /// TODO  
  }
}

  private MongoClient _client;

  O connect(this O)() {
    _client = connectMongoDB(url);
    return cast(O)this;
  }
  O connect(this O)(string newUrl) {
    this.url(newUrl);
    _client = connectMongoDB(url); // "mongodb://127.0.0.1:27018/?safe=true"

    return cast(O)this;
  }

    string uniqueName(string dbName, string pool, string startName) { return uniqueName(dbName~"."~pool, startName); }
    string uniqueName(string collectionName, string startName) {
      string result = startName;
      while(count(collectionName, ["name":result]) > 0) result = startName~"-"~to!string(uniform(0, 999999));
      return result;
    }

    // link structure = uuid.versionMajor.versionMinor
    size_t countAll(string dbName, string pool) { return countAll(dbName~"."~pool); }
    size_t countAll(string collectionName) {       
      return _client.getCollection(collectionName).count(null);
    }

    size_t count(string dbName, string pool, UUID id) { return count(dbName~"."~pool, id); }
    size_t count(string collectionName, UUID id) {
      auto col = _client.getCollection(collectionName);
      return col.count(["id":id.toString]);
    }

    size_t count(string dbName, string pool, DOOPEntity anEntity) { return count(dbName~"."~pool, anEntity); }
    size_t count(string collectionName, DOOPEntity anEntity) {
        if (!anEntity) return 0;

        STRINGAA selector;
        selector["id"] = anEntity.id.toString;
        if (anEntity.versionMajor > 0) selector["versionMajor"] = to!string(anEntity.versionMajor); 
        if (anEntity.versionMinor > 0) selector["versionMinor"] = to!string(anEntity.versionMinor); 
        return count(collectionName, selector);
    }

    size_t count(string dbName, string pool, STRINGAA select) { return count(dbName~"."~pool, select); }
    size_t count(string collectionName, STRINGAA select) {
      // debug writeln("Searching ", select, " in ", collectionName);
      auto col = _client.getCollection(collectionName);
      // debug writeln("Looking in collection ", col.name);
      return col.count(select);
    }

    size_t count(string dbName, string pool, Json select) { return count(dbName~"."~pool, select); }
    size_t count(string collectionName, Json select) {
      auto col = _client.getCollection(collectionName);
      return col.count(select);
    }

    Json[] find(UUID id) {
      Json[] results;
      results ~= find(["central.attclasses", "central.objclasses", "central.attributes", "central.objects"], id);
      return results;
    }
    Json[] find(STRINGAA selector) {
      Json[] results;
      results ~= find(["central.attclasses", "central.objclasses", "central.attributes", "central.objects"], selector);
      return results;
    }
    Json[] find(Json selector) {
      Json[] results;
      results ~= find(["central.attclasses", "central.objclasses", "central.attributes", "central.objects"], selector);
      return results;
    }

    Json[] find(string dbName, string[] pools) {
      Json[] results;
      foreach(pool; pools) results ~= find(dbName, pool);
      return results;
    }
    Json[] find(string[] pools) {
      Json[] results;
      foreach(pool; pools) results ~= find(pool);
      return results;
    }

    Json[] find(string dbName, string[] pools, UUID[] ids) {
      Json[] results;
      pools.each!(a => results ~= find(dbName, a, ids));
      return results;
    }
    Json[] find(string[] pools, UUID[] ids) {
      Json[] results;
      pools.each!(a => results ~= find(a, ids));
      return results;
    }

    Json[] find(string dbName, string[] pools, UUID id) {
      Json[] results;
      foreach(pool; pools) results ~= find(dbName, pool, id);
      return results;
    }
    Json[] find(string[] pools, UUID id) {
      Json[] results;
      foreach(pool; pools) results ~= find(pool, id);
      return results;
    }

    Json[] find(string dbName, string[] pools, DOOPEntity anEntity) {
      Json[] results;
      foreach(pool; pools) results ~= find(dbName, pool, anEntity);
      return results;
    }
    Json[] find(string[] pools, DOOPEntity anEntity) {
      Json[] results;
      foreach(pool; pools) results ~= find(pool, anEntity);
      return results;
    }

    Json[] find(string dbName, string[] pools, STRINGAA select) {
      Json[] results;
      foreach(pool; pools) results ~= find(dbName, pool, select);
      return results;
    }
    Json[] find(string[] pools, STRINGAA select) {
      Json[] results;
      foreach(pool; pools) results ~= find(pool, select);
      return results;
    }

    //Json[] find(string dbName, string[] pools, Json select) {
    Json[] find(string dbName, string[] pools, Json select) {
      Json[] results;
      foreach(pool; pools) results ~= find(dbName, pool, select);
      return results;
    }
    Json[] find(string[] pools, Json select) {
      Json[] results;
      foreach(pool; pools) results ~= find(pool, select);
      return results;
    }

    // Search pool
    Json[] find(string dbName, string pool) { return find(dbName~"."~pool); } 
    Json[] find(string collectionName) {
      Json[] results;
      writeln("Looking in "~collectionName);
      foreach(bson; _client.getCollection(collectionName).find()) { 
          auto json = bson.toJson; 
          json["pool"] = collectionName;
          results ~= json;
      }
      return results;
    }

    Json[] find(string dbName, string pool, UUID[] ids) { return find(dbName~"."~pool, ids); }
    Json[] find(string pool, UUID[] ids) {
      Json[] results;
      ids.each!(a => results ~= find(pool, a));
      return results; 
    }

    Json[] find(string dbName, string pool, UUID id) { return find(dbName~"."~pool, id); }
    Json[] find(string collectionName, UUID id) {
      return find(collectionName, ["id":id.toString]);
    }
    

    Json[] find(string dbName, string pool, DOOPEntity anEntity) { return find(dbName~"."~pool, anEntity); }
    Json[] find(string collectionName, DOOPEntity anEntity) {
      if (!anEntity) return null;
      return find(collectionName, entityToSelect(anEntity));
    }

    Json[] find(string dbName, string pool, STRINGAA select) { return find(dbName~"."~pool, select); }
    Json[] find(string collectionName, STRINGAA select) {
      // debug writeln("Json[] find(string pool, STRINGAA select) -> ", collectionName, "/", select);  
      Json[] results;
      auto col = _client.getCollection(collectionName);
      // debug writeln("Searching ", select, " in ", collectionName);
      // debug writeln("Looking in collection ", col.name);
      foreach(bson; col.find(select)) { 
        auto json = bson.toJson; 
        json["pool"] = collectionName;
        results ~= json;
      }
      return results;
    }
  
    Json[] find(string dbName, string pool, Json select) { return find(dbName~"."~pool, select); }
    Json[] find(string collectionName, Json select) {
      Json[] results;
      auto col = _client.getCollection(collectionName);
      foreach(bson; col.find(select)) results ~= bson.toJson;
      return results;
    }

    Json findOne(string dbName, string colName, UUID id) { return findOne(dbName~"."~colName, id); }
    Json findOne(string collectionName, UUID id) {
      return findOne(collectionName, ["id":id.toString]);
    }

/*     // link structure = uuid.versionMajor.versionMinor
    Json findOne(string collectionName, string link) {
        auto selectItems = link.split(".");
        if (selectItems.length == 0) return Json.emptyObject;

        STRINGAA selector;
        selector["id"] = selectItems[0];
        if ((selectItems.length > 1) && (to!size_t(selectItems[1]) > 0)) selector["versionMajor"] = selectItems[1]; 
        if ((selectItems.length > 2) && (to!size_t(selectItems[2]) > 0)) selector["versionMinor"] = selectItems[2]; 
        return findOne(collectionName, selector);
    } * /

    Json findOne(string dbName, string colName, DOOPEntity anEntity) { return findOne(dbName~"."~colName, anEntity); }
    Json findOne(string collectionName, DOOPEntity anEntity) {
        if (!anEntity) return Json.emptyObject;

        STRINGAA selector;
        selector["id"] = anEntity.id.toString;
        if (anEntity.versionMajor > 0) selector["versionMajor"] = to!string(anEntity.versionMajor); 
        if (anEntity.versionMinor > 0) selector["versionMinor"] = to!string(anEntity.versionMinor); 
        return findOne(collectionName, selector);
    }

    Json findOne(string dbName, string colName, STRINGAA select) { return findOne(dbName~"."~colName, select); }
    Json findOne(string collectionName, STRINGAA select) {
      // debug writeln("Json findOne(string collectionName, STRINGAA select) -> ", collectionName, " - ", select);
      return _client.getCollection(collectionName).findOne(select).toJson;
    }
    
    Json findOne(string dbName, string colName, Json select) { return findOne(dbName~"."~colName, select); }
    Json findOne(string collectionName, Json select) {
      // debug writeln("Json findOne(string collectionName, Json select) -> ", collectionName, " - ", select);
      return _client.getCollection(collectionName).findOne(select).toJson;
    }

    Json[] opIndex(UUID id) { 
        Json[] results;
        results ~= find("attclasses", ["id":id.toString]);
        results ~= find("objclasses", ["id":id.toString]);
        results ~= find("attributes", ["id":id.toString]);
        results ~= find("objects", ["id":id.toString]);
        return results;
    }

    O insert(this O)(DOOPModel[] newModels...) {
      foreach (model; newModels) {
        insert("models", model.toJson); }
      return cast(O)this;
    }
    O insert(this O)(DOOPObjclass[] newObjclasses...) {
      foreach (objclass; newObjclasses) {
          insert("objclasses", objclass.toJson); }
      return cast(O)this;
    }
    O insert(this O)(DOOPAttclass[] newAttclasses...) {
      foreach (attclass; newAttclasses) {
          insert("attclasses", attclass.toJson); }
      return cast(O)this;
    }

    O insert(this O)(DOOPAttribute[] newAttributes...) {
      foreach (attribute; newAttributes) {
          insert("attributes", attribute.toJson); }
      return cast(O)this;
    }

    O insert(this O)(string dbName, string aPool, Json newData) { return cast(O)this.insert(dbName~"."~aPool, newData); }
    O insert(this O)(string collectionName, Json newData) {
      _client.getCollection(collectionName).insert(newData);
      return cast(O)this;
    }

    // --- Update
    O update(this O)(DOOPEntity anEntity) {
        this.update(entityToSelect(anEntity));
        return cast(O)this;
    }
    O update(this O)(STRINGAA data) {
        this.update(urlToSelect(data));
        return cast(O)this;
    }
    O update(this O)(Json selector) {
        this
        .update("models", selector, anEntity.toJson)
        .update("attclasses", selector, anEntity.toJson)
        .update("objclasses", selector, anEntity.toJson)
        .update("objects", selector, anEntity.toJson);
        return cast(O)this;
    }

    O update(this O)(string dbName, string aPool, Json newData) { return cast(O)this.update(dbName~"."~aPool, newData); } 
    O update(this O)(string collectionName, DOOPEntity anEntity) {
        this.update(collectionName, entityToSelect(anEntity), anEntity.toJson);
        return cast(O)this;
    }

    O update(this O)(string dbName, string aPool, STRINGAA aSelector) { return cast(O)this.update(dbName~"."~aPool, aSelector); }
    O update(this O)(string collectionName, STRINGAA aSelector, DOOPEntity anEntity) {
        this.update(collectionName, aSelector, anEntity.toJson);
        return cast(O)this;
    }

    O update(this O)(string dbName, string aPool, Json aSelector, DOOPEntity anEntity) { return cast(O)this.update(dbName~"."~aPool, aSelector, anEntity); }
    O update(this O)(string collectionName, Json aSelector, DOOPEntity anEntity) {
        this.update(collectionName, aSelector, anEntity.toJson);
        return cast(O)this;
    }

    O update(this O)(string dbName, string aPool, STRINGAA aSelector, Json updateData) { return cast(O)this.update(dbName~"."~aPool, aSelector, updateData); }
    O update(this O)(string collectionName, STRINGAA aSelector, Json updateData) {
      // debug writeln("O update(this O)(string collectionName, Json aSelector, Json updateData)  -> ", collectionName, " - ", aSelector, "/", updateData);
      this.update(collectionName, aSelector.serializeToJson, updateData);
      return cast(O)this;
    }

    O update(this O)(string dbName, string aPool, Json aSelector, Json updateData) { return cast(O)this.update(dbName~"."~aPool, aSelector, updateData); }
    O update(this O)(string collectionName, Json aSelector, Json updateData) {
      // debug writeln("O update(this O)(string collectionName, Json aSelector, Json updateData)  -> ", collectionName, " - ", aSelector, "/", updateData);
      updateData.remove("_id");
      _client.getCollection(collectionName).update(aSelector, updateData);
      return cast(O)this;
    }

    O remove(this O)(STRINGAA selector) {
        this
        .remove("models", selector)
        .remove("attclasses", selector)
        .remove("objclasses", selector)
        .remove("objects", selector);
        return cast(O)this;
    }

    O remove(this O)(string dbName, string aPool, STRINGAA aSelector) { return cast(O)this.remove(dbName~"."~aPool, aSelector); }
    O remove(this O)(string collectionName, STRINGAA selector) {
      // debug writeln("remove(this O)(string collectionName, STRINGAA selector) -> ", collectionName, " - ", selector);
      _client.getCollection(collectionName).remove(selector);
      return cast(O)this;
    }

    O remove(this O)(string dbName, string aPool, Json aSelector) { return cast(O)this.remove(dbName~"."~aPool, aSelector); }
    O remove(this O)(string collectionName, Json selector) {
      // debug writeln("remove(this O)(string collectionName, Json selector) -> ", collectionName, " - ", selector);
      _client.getCollection(collectionName).remove(selector);
      return cast(O)this;
    }

    Json[] log(UUID id) {
        return find("logs", id);
    }

    O log(this O)(UUID id, Json json) {
        auto logEntry = json.emptyObject;
        logEntry["id"] = id.toString;
        logEntry["data"] = json;
        
        insert("logs", logEntry);
        return cast(O)this;
    }
}
auto OOPRepository() { return new DOOPRepository; }
auto OOPRepository(string url) { return OOPRepository.url(url); }

 */