module uim.domains.exceptions.exception;

@safe:
import uim.domains;

interface IException {}

class DException {
    this() {}

    void initialize() {}
}
auto Exception() { return new DException; }