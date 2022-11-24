module uim.domains.events.event;

@safe:
import uim.domains;

interface IEvent {}

class DEvent {
    this() {}

    void initialize() {}
}
auto Event() { return new DEvent; }