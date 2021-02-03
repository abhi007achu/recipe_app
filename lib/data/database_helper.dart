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
  final String columnCal = "cal";
  final String columnMethod = "method";
  final String columnImage = "image";
  final String columnIngr = "ingr";
  final String columnDname = "dname";
  final String columnRec1 = "rec1";
  final String columnrec2 = "rec2";
  final String columnrec3 = "rec3";
  final String columnrec4 = "rec4";
  final String columnrec5 = "rec5";
  final String columnrec6 = "rec6";
  final String columnrec7 = "rec7";
  final String columnrec8 = "rec8";
  final String columnrec9 = "rec9";
  final String columnrec10 = "rec10";
  final String columnrec11 = "rec11";
  final String columnrec12 = "rec12";
  final String columnrec13 = "rec13";

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
    print (res);
    return res;
  }

  Future<List<Map<String, dynamic>>> get_dishinfo(Dish dish) async {
    var dbClient = await db;

    print(tableDish);
    final res = await dbClient.query(tableDish,
        columns: [columnDishname,columnTime,columnCal,columnIngr,columnMethod,columnImage],
        where: "$columnDishname = ?",
        whereArgs: [dish.dishname]);
    print(res);
    return res;
  }
  Future<List> get_dishname(Dish dish) async {
    var dbClient = await db;
    print(tableDish);
    final res = await dbClient.query(tableDish,
        columns: [columnDishname],
        where: "$columnDishname = ?",
        whereArgs: [dish.dishname]);
    print(res);
    return res;
  }
  Future<List> get_time(Dish dish) async {
    var dbClient = await db;

    final res = await dbClient.query(tableDish,
        columns: [columnTime],
        where: "$columnDishname = ?",
        whereArgs: [dish.dishname]);
    print(res);
    return res;
  }
  Future<List> get_cal(Dish dish) async {
    var dbClient = await db;

    final res = await dbClient.query(tableDish,
        columns: [columnCal],
        where: "$columnDishname = ?",
        whereArgs: [dish.dishname]);
    print(res);
    return res;
  }
  Future<List> get_ing(Dish dish) async {
    var dbClient = await db;

    final res = await dbClient.query(tableDish,
        columns: [columnIngr],
        where: "$columnDishname = ?",
        whereArgs: [dish.dishname]);
    print(res);
    return res;
  }
  Future<List> get_method(Dish dish) async {
    var dbClient = await db;

    final res = await dbClient.query(tableDish,
        columns: [columnMethod],
        where: "$columnDishname = ?",
        whereArgs: [dish.dishname]);
    print(res);
    return res;
  }
  Future<List> get_image(Dish dish) async {
    var dbClient = await db;

    final res = await dbClient.query(tableDish,
        columns: [columnImage],
        where: "$columnDishname = ?",
        whereArgs: [dish.dishname]);
    print(res);
    return res;
  }
  Future<List<Map<String, dynamic>>> get_recipeinfo(Recipe rec) async {
    var dbClient = await db;
    print(tableRecipe);
    final res = await dbClient.query(tableRecipe,
        columns: [columnRec1,columnrec2,columnrec3,columnrec4,columnrec5,columnrec6,columnrec7,columnrec8,columnrec9,columnrec10,columnrec11,columnrec12,columnrec13],
        where: "$columnDname = ?",
        whereArgs: [rec.dname]);
    print(res);
    return res;
  }
  Future<List> get_dname(Recipe rec) async {
    var dbClient = await db;
    print(tableRecipe);
    final res = await dbClient.query(tableRecipe,
        columns: [columnDname],
        where: "$columnDname = ?",
        whereArgs: [rec.dname]);
    print(res);
    return res;
  }
  Future<List> get_recipe1(Recipe rec) async {
    var dbClient = await db;

    final res = await dbClient.query(tableRecipe,
        columns: [columnRec1],
        where: "$columnDname = ?",
        whereArgs: [rec.dname]);
    print(res);
    return res;
  }
  Future<List> get_recipe2(Recipe rec) async {
    var dbClient = await db;

    final res = await dbClient.query(tableRecipe,
        columns: [columnrec2],
        where: "$columnDname = ?",
        whereArgs: [rec.dname]);
    print(res);
    return res;
  }
  Future<List> get_recipe3(Recipe rec) async {
    var dbClient = await db;

    final res = await dbClient.query(tableRecipe,
        columns: [columnrec3],
        where: "$columnDname = ?",
        whereArgs: [rec.dname]);
    print(res);
    return res;
  }
  Future<List> get_recipe4(Recipe rec) async {
    var dbClient = await db;

    final res = await dbClient.query(tableRecipe,
        columns: [columnrec4],
        where: "$columnDname = ?",
        whereArgs: [rec.dname]);
    print(res);
    return res;
  }
  Future<List> get_recipe5(Recipe rec) async {
    var dbClient = await db;

    final res = await dbClient.query(tableRecipe,
        columns: [columnrec5],
        where: "$columnDname = ?",
        whereArgs: [rec.dname]);
    print(res);
    return res;
  }
  Future<List> get_recipe6(Recipe rec) async {
    var dbClient = await db;

    final res = await dbClient.query(tableRecipe,
        columns: [columnrec6],
        where: "$columnDname = ?",
        whereArgs: [rec.dname]);
    print(res);
    return res;
  }
  Future<List> get_recipe7(Recipe rec) async {
    var dbClient = await db;

    final res = await dbClient.query(tableRecipe,
        columns: [columnrec7],
        where: "$columnDname = ?",
        whereArgs: [rec.dname]);
    print(res);
    return res;
  }
  Future<List> get_recipe8(Recipe rec) async {
    var dbClient = await db;

    final res = await dbClient.query(tableRecipe,
        columns: [columnrec8],
        where: "$columnDname = ?",
        whereArgs: [rec.dname]);
    print(res);
    return res;
  }
  Future<List> get_recipe9(Recipe rec) async {
    var dbClient = await db;

    final res = await dbClient.query(tableRecipe,
        columns: [columnrec9],
        where: "$columnDname = ?",
        whereArgs: [rec.dname]);
    print(res);
    return res;
  }
  Future<List> get_recipe10(Recipe rec) async {
    var dbClient = await db;

    final res = await dbClient.query(tableRecipe,
        columns: [columnrec10],
        where: "$columnDname = ?",
        whereArgs: [rec.dname]);
    print(res);
    return res;
  }
  Future<List> get_recipe11(Recipe rec) async {
    var dbClient = await db;

    final res = await dbClient.query(tableRecipe,
        columns: [columnrec11],
        where: "$columnDname = ?",
        whereArgs: [rec.dname]);
    print(res);
    return res;
  }
  Future<List> get_recipe12(Recipe rec) async {
    var dbClient = await db;

    final res = await dbClient.query(tableRecipe,
        columns: [columnrec12],
        where: "$columnDname = ?",
        whereArgs: [rec.dname]);
    print(res);
    return res;
  }
  Future<List> get_recipe13(Recipe rec) async {
    var dbClient = await db;

    final res = await dbClient.query(tableRecipe,
        columns: [columnrec13],
        where: "$columnDname = ?",
        whereArgs: [rec.dname]);
    print(res);
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
  Future<List<Map<String, dynamic>>> getDishMapList() async {
    var dbClient = await db;

    var res = await dbClient.rawQuery('SELECT * FROM Dish order by dishid ASC');
    //var res = await db.query("User", orderBy: 'id ASC');
    return res;
  }


  Future<int> getCount() async {
    var dbClient = await db;
    List<Map<String, dynamic>> x = await dbClient.rawQuery('SELECT COUNT (*) from Dish');
    int res = Sqflite.firstIntValue(x);
    return res;
  }


  // Get the 'Map List' [ List<Map> ] and convert it to 'Note List' [ List<Note> ]
  Future<List<Dish>> getDishList() async {

    var dishMapList = await getDishMapList(); // Get 'Map List' from database
    int count = dishMapList.length;         // Count the number of map entries in db table

    List<Dish> dishList = List<Dish>();
    // For loop to create a 'Note List' from a 'Map List'
    for (int i = 0; i < count; i++) {
      dishList.add(Dish.fromMapObject(dishMapList[i]));
    }

    return dishList;
  }
  Future<List<Dish>> getsearchDishList(Dish dish) async {

    var dishMapList = await get_dishinfo(dish); // Get 'Map List' from database
    int count = dishMapList.length;         // Count the number of map entries in db table

    List<Dish> dishList = List<Dish>();
    // For loop to create a 'Note List' from a 'Map List'
    for (int i = 0; i < count; i++) {
      dishList.add(Dish.fromMapObject(dishMapList[i]));
    }
    return dishList;
  }
  Future<List<Recipe>> getsearchRecList(Recipe rec) async {

    var recMapList = await get_recipeinfo(rec); // Get 'Map List' from database
    int count = recMapList.length;         // Count the number of map entries in db table

    List<Recipe> recList = List<Recipe>();
    // For loop to create a 'Note List' from a 'Map List'
    for (int i = 0; i < count; i++) {
      recList.add(Recipe.fromMapObject(recMapList[i]));
    }
    return recList;
  }

}