import 'package:flutter/material.dart';
import 'package:payflow/models/user.dart';
import 'package:payflow/modules/home/home_page.dart';
import 'package:payflow/modules/login/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  var _isAuthenticated = false;
  User? _user;

  User get user => _user!;

  void setUser(BuildContext context, User? user) {
    if (user != null) {
      _user = user;
      _isAuthenticated = true;
      Navigator.pushReplacementNamed(context, "/home");
    } else {
      _isAuthenticated = false;
      Navigator.pushReplacementNamed(context, "/login");
    }
  }

  Future<void> saveUser(User user) async {
    final instance = await SharedPreferences.getInstance();
    await instance.setString("user", user.toJson());
    return;
  }

  Future<void> currentUser(BuildContext context) async {
    final instance = await SharedPreferences.getInstance();
    final json = instance.get("user") as String;
    setUser(context, User.fromJson(json));
  }
}
