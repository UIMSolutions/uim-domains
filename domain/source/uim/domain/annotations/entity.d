module uim.domain.annotations.entity;

struct Key {}
struct Length { size_t value; }
struct Label  { string text; }
struct Mandatory {}
struct ReadOnly {}
struct Association { string target; string cardinality = "1..n"; }
struct EntitySet   { string name; }   // OData-Name der Entity-Menge