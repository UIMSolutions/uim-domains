module uim.domains.entities;

@safe:
import uim.domains;

class DOOPEntities {
  this() {}

  private DEntity[] _items;

  DEntity[] all() {
    return _items.dup;
  }

  O add(this O)(DEntity[] newEntities) {
    _items ~= newEntities.dup;
    return cast(O)this;
  }

  O set(this O)(DEntity[] newEntities) {
    _items = newEntities.dup;
    return cast(O)this;
  }

  bool notEmpty() {
    return (_items.length > 0);
  }

  O sort(this O)(string sortBy, string sortDir = "") {
    if (this.sortBy) {
      if (this.sortDir.toLower == "up") {
        _items = _items
          .sort!((a, b) => a[sortBy]< b[sortBy]).array;
      }
      else {
        _items = _items
          .sort!((a, b) => a[sortBy] > b[sortBy]).array;
      }
    }
    return cast(O)this;
  }

  O filter(this O)(string filterBy, string filterValue) {
    if (this.filterBy && this.filterValue) {
      _items = _items
        .filter!(entity => entity[filterBy].indexOf(this.filterValue) == 0).array;
    }
    return cast(O)this;
  }

  O opCall(this O)(DEntity[] newEntities) {
    this.set(newEntities);
    return cast(O)this;
  }
}

version(test_uim_entities) { unittest {
    assert(OOPEntities);
}}
