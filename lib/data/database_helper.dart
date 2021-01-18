import 'dart:io';
import 'package:recipeapp/models/user.dart';
import 'package:path/path.dart';
import 'dart:async';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:recipeapp/models/dish.dart';
import 'package:recipeapp/models/recipe.dart';
import 'package:recipeapp/models/user1.dart';


class DatabaseHelper {
  static final DatabaseHelper _instance = new DatabaseHelper.internal();
  factory DatabaseHelper() => _instance;

  static Database _db;
  final String tableUser = "User";
  final String tableDish = "Dish";
  final String tableRecipe = "Recipe";
  final String tableUser1 = "User1";
  final String columnName = "name";
  final String columnpName = "pname";
  final String columnUserName = "username";
  final String columnPassword = "password";
  final String columnpUserName = "pusername";
  final String columnpPassword = "ppassword";
  final String columnDishname = "dishname";
  final String columnTime = "time";
  final String columnMethod = "method";
  final String columnImage = "image";
  final String columnDname = "dname";
  final String columnRec1 = "rec1";

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }

  DatabaseHelper.internal();

  initDb() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, "tastediary2.db");
    var ourDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return ourDb;
  }

  void _onCreate(Database db, int version) async {
    await db.execute(
        "CREATE TABLE User(id INTEGER PRIMARY KEY, name TEXT, username TEXT, password TEXT,phno INTEGER,email TEXT,flaglogged TEXT,fav1 TEXT,fav2 TEXT)");

    print("User is created");
    await db.execute(
        "CREATE TABLE User1(pid INTEGER PRIMARY KEY, pname TEXT, pusername TEXT, ppassword TEXT,pphno INTEGER,pemail TEXT,flaglogged TEXT,pfav1 TEXT,pfav2 TEXT)");

    print("User1 is created");

    await db.execute(
        "CREATE TABLE Dish(dishid INTEGER PRIMARY KEY, dishname TEXT, time TEXT, cal INTEGER,ingr INTEGER,method TEXT, image TEXT)");
    print("Dish is created");

    await db.execute(
        "CREATE TABLE Recipe(recipeid INTEGER PRIMARY KEY, dname TEXT, rec1 TEXT,rec2 TEXT,rec3 TEXT,rec4 TEXT,rec5 TEXT,rec6 TEXT,rec7 TEXT,rec8 TEXT,rec9 TEXT,rec10 TEXT,rec11 TEXT,rec12 TEXT,rec13 TEXT)");
    print("Recipe is created");


  }

  //user table
  //insertion
  Future<int> saveUser(User user) async {
    var dbClient = await db;
    print(user.name);
    int res = await dbClient.insert("User", user.toMap());
    print(tableUser);
    List<Map> list = await dbClient.rawQuery('SELECT * FROM User');
    print(list);
    return res;
  }

  //deletion
  Future<int> deleteUser(User user) async {
    var dbClient = await db;
    int res = await dbClient.delete("User");
    return res;
  }

  Future<User> selectUser(User user) async{
    print("Select User");
    print(user.username);
    print(user.password);
    var dbClient = await db;
    List<Map> maps = await dbClient.query(tableUser,
        columns: [columnUserName, columnPassword],
        where: "$columnUserName = ? and $columnPassword = ?",
        whereArgs: [user.username,user.password]);
    print(maps);
    if (maps.length > 0) {
      print("User Exist !!!");
      return user;
    }else
      {
         return null;
      }
  }

  //pro table
  //insertion
  Future<int> saveUser1(User1 user1) async {
    var dbClient = await db;
    print(user1.pname);
    int res = await dbClient.insert("User1", user1.toMap());
    print(tableUser1);
    List<Map> list = await dbClient.rawQuery('SELECT * FROM User1');
    print(list);
    return res;
  }

  //deletion
  Future<int> deleteUser1(User1 user1) async {
    var dbClient = await db;
    int res = await dbClient.delete("User1");
    return res;
  }

  Future<User1> selectUser1(User1 user1) async{
    print("Select User1");
    print(user1.pusername);
    print(user1.ppassword);
    var dbClient1 = await db;
    List<Map> maps = await dbClient1.query(tableUser1,
        columns: [columnpUserName, columnpPassword],
        where: "$columnpUserName = ? and $columnpPassword = ?",
        whereArgs: [user1.pusername,user1.ppassword]);
    print(maps);
    if (maps.length > 0) {
      print("User1 Exist !!!");
      return user1;
      }else
        {
          return null;
        }
      }




  //dish table
  //insertion
  Future<int> saveDish(Dish dishes) async {
    var dbClient1 = await db;
    print(dishes.dishname);
    print(tableDish);
    int res = await dbClient1.insert("Dish", dishes.toMap());
    List<Map> list = await dbClient1.rawQuery('SELECT * FROM Dish');
    print(list);
    return res;
  }

  //deletion
  Future<int> deleteDish(Dish dishes) async {
    var dbClient1 = await db;
    int res = await dbClient1.delete("Dish");
    return res;
  }
  /*
  Future<Dish> selectDish(Dish dishes) async{
    print("Select Dish");
    print(dishes.dishname);
    print(dishes.time);
    var dbClient1 = await db;
    List<Map> maps = await dbClient1.query(tableDish,
        columns: [columnDishname, columnTime],
        where: "$columnDishname = ? and $columnTime = ?",
        whereArgs: [dishes.dishname,dishes.time]);
    print(maps);
    if (maps.length > 0) {
      print("Dish Exist !!!");
      return dishes;
    }else {
      return null;
    }
  }
  */
  //recipe table
  //insertion
  Future<int> saveRecipe(Recipe recipes) async {
    var dbClient2 = await db;
    print(recipes.dname);
    print(tableRecipe);
    int res = await dbClient2.insert("Recipe", recipes.toMap());
    List<Map> list = await dbClient2.rawQuery('SELECT * FROM Recipe');
    print(list);
    return res;
  }

  //deletion
  Future<int> deleteRecipe(Recipe recipes) async {
    var dbClient2 = await db;
    int res = await dbClient2.delete("Recipe");
    return res;
  }
  /*
  Future<Recipe> selectRecipe(Recipe recipes) async{
    print("Select Dish");
    print(recipes.dname);
    print(recipes.rec1);
    var dbClient2 = await db;
    List<Map> maps = await dbClient2.query(tableRecipe,
        columns: [columnDname, columnRec1],
        where: "$columnDname = ? and $columnRec1 = ?",
        whereArgs: [recipes.dname,recipes.rec1]);
    print(maps);
    if (maps.length > 0) {
      print("Recipe Exist !!!");
      return recipes;
    }else {
      return null;
    }
  }
  */
}