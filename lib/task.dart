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
    this.checkpoints,
    this.commonTime,
    this.startTime,
    this.endTime,
    this.title,
    this.description,
    this.userId,
    this.token,
    this.status,
    this.projectCategoryId,
  });

  int id;
  String createdAt;
  String updatedAt;
  Checkpoints checkpoints;
  int commonTime;
  int startTime;
  int endTime;
  String title;
  int description;
  int userId;
  String token;
  String status;
  int projectCategoryId;

  factory Task.fromJson(Map<String, dynamic> json) => Task(
    id: json["id"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    checkpoints: Checkpoints.fromJson(json["checkpoints"]),
    commonTime: json["common_time"],
    startTime: json["start_time"],
    endTime: json["end_time"],
    title: json["title"],
    description: json["description"],
    userId: json["user_id"],
    token: json["token"],
    status: json["status"],
    projectCategoryId: json["project_category_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "checkpoints": checkpoints.toJson(),
    "common_time": commonTime,
    "start_time": startTime,
    "end_time": endTime,
    "title": title,
    "description": description,
    "user_id": userId,
    "token": token,
    "status": status,
    "project_category_id": projectCategoryId,
  };
}

class Checkpoints {
  Checkpoints();

  factory Checkpoints.fromJson(Map<String, dynamic> json) => Checkpoints(
  );

  Map<String, dynamic> toJson() => {
  };
}
