module uim.entities.tests;

@safe:
public import uim.entities;

void testEntityBooleanAttributes(DEntity entity, string[] attributeNames) {
  foreach(name; attributeNames) {
    assert(entity[name] == "false", "Error in BooleanAttribute "~name~" not null");

    entity[name] = true;
    assert(entity[name] == "true", "Error in BooleanAttribute "~name);
    entity[name] = "true";
    assert(entity[name] == "true", "Error in BooleanAttribute "~name);

    entity[name] = false;
    assert(entity[name] == "false", "Error in BooleanAttribute "~name);
    entity[name] = "false";
    assert(entity[name] == "false", "Error in BooleanAttribute "~name);
  }
}

void testEntityStringAttributes(DEntity entity, string[] attributeNames) {
  foreach(name; attributeNames) {
    assert(entity[name] == null, "Error in StringAttribute "~name~" not null");

    auto val = to!string(uniform(0, 100000));
    entity[name] = val;
    assert(entity[name] == val, "Error in StringAttribute "~name);
  }
}

void testEntityUUIDAttributes(DEntity entity, string[] attributeNames) {
  foreach(name; attributeNames) {
    assert(entity[name] == UUID().toString, "Error in UUIDAttribute "~name~" not null");

    auto id = randomUUID;
    entity[name] = id;
    assert(entity[name] == id.toString, "Error in UUIDAttribute "~name);
    entity[name] = id.toString;
    assert(entity[name] == id.toString, "Error in UUIDAttribute(string) "~name);
  }
}