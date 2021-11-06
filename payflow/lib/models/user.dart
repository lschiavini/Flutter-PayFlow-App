import 'dart:convert';

class User {
  final String name;
  final String? photoURL;

  User({required this.name, this.photoURL});

  Map<String, dynamic> toMap() => {
        "name": name,
        "photoUrl": photoURL,
      };
  String toJson() => jsonEncode(toMap());

  factory User.fromJson(String json) => User.fromMap(jsonDecode(json));

  factory User.fromMap(Map<String, dynamic> map) {
    return User(name: map['name'], photoURL: map['photoURL']);
  }
}
