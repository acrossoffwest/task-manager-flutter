// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.name,
    this.email,
  });

  int id;
  String createdAt;
  String updatedAt;
  String name;
  String email;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    name: json["name"],
    email: json["email"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "name": name,
    "email": email,
  };
}
