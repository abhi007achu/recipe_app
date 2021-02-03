import 'package:flutter/material.dart';
import 'package:recipeapp/data/database_helper.dart';
import 'package:recipeapp/models/dish.dart';
import 'package:sqflite/sqflite.dart';
class apos extends StatelessWidget {
  // This widget is the root
  // of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dish List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: APosPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}





class APosPage extends StatefulWidget {
  @override
  _APosState createState() => _APosState();
}
class _APosState extends State<APosPage> {

  DatabaseHelper databaseHelper = DatabaseHelper();
  List<Dish> dishList;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    if (dishList == null) {
      dishList = List<Dish>();
      updateListView();
    }

    return Scaffold(
      appBar: AppBar(
        title:Text("Dish List"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: getUserListView(),
    );}

  ListView getUserListView() {

    TextStyle titleStyle = Theme.of(context).textTheme.subhead;
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(


            title: Text(this.dishList[position].dishname , style: titleStyle,),

            subtitle: Text(this.dishList[position].time),



          ),
        );
      },
    );
  }

  void updateListView() {

    final Future<dynamic> dbFuture = databaseHelper.initDb();

    dbFuture.then((db) {

      Future<List<Dish>> userListFuture = databaseHelper.getDishList();
      userListFuture.then((userList) {
        setState(() {
          this.dishList = userList;
          this.count = userList.length;
        });
      });
    });
  }
}


