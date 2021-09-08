import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:payflow/modules/home/home_page.dart';
import 'package:payflow/modules/login/login_page.dart';

class AuthController {
  var _isAuthenticated = false;
  var _user;

  get getUser => this._user;

  void setUser(BuildContext context, var user) {
    if (user != null) {
      this._user = user;

      this._isAuthenticated = true;

      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    } else {
      _isAuthenticated = false;
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    }
  }
}
