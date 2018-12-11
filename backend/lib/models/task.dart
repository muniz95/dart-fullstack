class Task {
  Task({this.id, this.name, this.lastDone, this.interval});

  factory Task.map(Map<String, String> obj) {
    return Task(
      id: int.parse(obj["id"]),
      name: obj["name"],
      // lastDone: DateTime.parse(obj["lastDone"]),
      lastDone: (obj["lastDone"] == null) ? null : DateTime.parse(obj["lastDone"]),
      interval: int.parse(obj["interval"]),
    );
  }

  int id;
  String name;
  DateTime lastDone;
  int interval;

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> map = <String, dynamic>{};
    map["id"] = id;
    map["name"] = name;
    map["lastDone"] = (lastDone != null) ? lastDone.toIso8601String() : null;
    map["interval"] = interval;

    return map;
  }
}