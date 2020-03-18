class Trip {
  int id;
  String name;
  String description;
  bool complete;
  DateTime created = DateTime.now();
  DateTime updated;

  bool isNew() {
    return this.id == null || this.id == 0;
  }
}