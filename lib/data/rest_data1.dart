import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:recipeapp/models/user1.dart';
import 'package:recipeapp/data/database_helper.dart';
import 'package:recipeapp/screens/beg/beg_login.dart';

class RestData {

  static final BASE_URL = "";
  static final LOGIN_URL = BASE_URL + "/";

  Future<User1> login(String username, String password) async {
    String flagLogged = "logged";
    //simulate internet connection by selecting the local database to check if user has already been registered
    var user = new User1(null, username, password, null, null, null,null,null);
    var db = new DatabaseHelper();
    var userRetorno = new User1(null, null, null, null, null, null,null,null);
    userRetorno = await db.selectUser1(user);
    if (userRetorno != null) {
      flagLogged = "logged";
      return new Future.value(
          new User1(null, username, password, null, null, flagLogged,null,null));
    } else {
      flagLogged = "not";
      return new Future.value(
          new User1(null, username, password, null, null, flagLogged,null,null));
    }
  }
}