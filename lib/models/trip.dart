@Deprecated("Instead use Trip from [travel_list/domain/trip/trip.dart] package")
class Trip {
  int id;
  String name;
  String description;
  bool complete;
  DateTime start;
  DateTime end;
  DateTime created = DateTime.now();
  DateTime updated;

  Trip();
  Trip.fromNameAndDescription (this.id, this.name, this.description);

  bool isNew() {
    return id == null || id == 0;
  }
}