import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:recipeapp/models/user.dart';
import 'package:recipeapp/data/database_helper.dart';
import 'package:recipeapp/screens/beg/beg_login.dart';

class RestData {

  static final BASE_URL = "";
  static final LOGIN_URL = BASE_URL + "/";

  Future<User> login(String username, String password) async {
    String flagLogged = "logged";
    //simulate internet connection by selecting the local database to check if user has already been registered
    var user = new User(null, username, password, null, null, null,null,null);
    var db = new DatabaseHelper();
    var userRetorno = new User(null, null, null, null, null, null,null,null);
    userRetorno = await db.selectUser(user);
    if (userRetorno != null) {
      flagLogged = "logged";
      return new Future.value(
          new User(null, username, password, null, null, flagLogged,null,null));
    } else {
      flagLogged = "not";
      return new Future.value(
          new User(null, username, password, null, null, flagLogged,null,null));
    }
  }
}