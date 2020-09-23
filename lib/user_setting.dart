// To parse this JSON data, do
//
//     final task = taskFromJson(jsonString);

import 'dart:convert';

Task taskFromJson(String str) => Task.fromJson(json.decode(str));

String taskToJson(Task data) => json.encode(data.toJson());

class Task {
  Task({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.settints,
    this.userId,
  });

  int id;
  String createdAt;
  String updatedAt;
  String settints;
  int userId;

  factory Task.fromJson(Map<String, dynamic> json) => Task(
    id: json["id"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    settints: json["settints"],
    userId: json["user_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "settints": settints,
    "user_id": userId,
  };
}
