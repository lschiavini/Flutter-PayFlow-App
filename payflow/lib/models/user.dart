import 'dart:convert';

class User {
  final String name;
  final String? photoUrl;

  User({required this.name, this.photoUrl});

  Map<String, dynamic> toMap() => {
        "name": name,
        "photoUrl": photoUrl,
      };
  String toJson() => jsonEncode(toMap());

  factory User.fromJson(String json) => User.fromMap(jsonDecode(json));

  factory User.fromMap(Map<String, dynamic> map) {
    return User(name: map['name'], photoUrl: map['photoUrl']);
  }
}
