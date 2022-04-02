module uim.entities.entities;

@safe:
import uim.entities;

class DOOPEntities {
  this() {}

  private DOOPEntity[] _items;

  DOOPEntity[] all() {
    return _items;
  }

  O add(this O)(DOOPEntity[] newEntities) {
    _items ~= newEntities;
    return cast(O)this;
  }

  O set(this O)(DOOPEntity[] newEntities) {
    _items = newEntities;
    return cast(O)this;
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

  O opCall(this O)(DOOPEntity[] newEntities) {
    this.set(newEntities);
    return cast(O)this;
  }

}


