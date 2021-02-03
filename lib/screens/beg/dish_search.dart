import 'package:flutter/material.dart';
import 'package:recipeapp/data/database_helper.dart';
import 'package:recipeapp/models/dish.dart';
import 'package:recipeapp/models/recipe.dart';

class dapos extends StatelessWidget {
  final item;
  dapos(this.item);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dish List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: APosPage(item),
      debugShowCheckedModeBanner: false,
    );
  }
}





class APosPage extends StatefulWidget {
  final item;
  APosPage(this.item);
  @override
  _APosState createState() => _APosState();
}
class _APosState extends State<APosPage> {

  DatabaseHelper databaseHelper = DatabaseHelper();
  List<Dish> dishList;
  List<Recipe> recList;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    if (dishList == null) {
      dishList = List<Dish>();
      recList = List<Recipe>();
      updateListView();

    }

    return Scaffold(
      appBar: AppBar(
        title:Text(widget.item),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body:
          getUserListView1(),

    );
  }

  ListView getUserListView1() {

    return ListView.builder(

      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
       int ingr= this.dishList[position].ingr;
       int cal= this.dishList[position].cal;
       String name= this.dishList[position].dishname;
       String image= this.dishList[position].image;
       String time= this.dishList[position].time;
       String dec= this.dishList[position].method;
       String rec1=this.recList[position].rec1;
       String rec2=this.recList[position].rec2;
       String rec3=this.recList[position].rec3;
       String rec4=this.recList[position].rec4;
       String rec5=this.recList[position].rec5;
       String rec6=this.recList[position].rec6;
       String rec7=this.recList[position].rec7;
       String rec8=this.recList[position].rec8;
       String rec9=this.recList[position].rec9;
       String rec10=this.recList[position].rec10;
       String rec11=this.recList[position].rec11;
       String rec12=this.recList[position].rec12;
       String rec13=this.recList[position].rec13;

        return Card(
          color: Colors.white,
          elevation: 2.0,

          child: Column(
          children:[
            ListTile(
              title: Text('NAME :    $name' ,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              


          ),
            ListTile(
              leading: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 100,
                  minHeight: 100,
                  maxWidth: 900,
                  maxHeight: 900,
                ),
                child: Image.network('$image',fit: BoxFit.contain,),

              ),
            ),
            ListTile(
              title: Text('TIME :    $time' ,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ListTile(
              title: Text('INGREDIENTS :    $ingr',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ListTile(
              title: Text('CALORIE :    $cal',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ListTile(
              title: Text('RECIPIES  : \n \n$rec1',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ListTile(
              title: Text('$rec2',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ListTile(
              title: Text('$rec3',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ListTile(
              title: Text('$rec4',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ListTile(
              title: Text('$rec5',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ListTile(
              title: Text('$rec6',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ListTile(
              title: Text('$rec7',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ListTile(
              title: Text('$rec8',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ListTile(
              title: Text('$rec9',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ListTile(
              title: Text('$rec10',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ListTile(
              title: Text('$rec11',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ListTile(
              title: Text('$rec12',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ListTile(
              title: Text('$rec13',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ListTile(
              title: Text('METHOD : \n \n$dec',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
        ],
        ),

        );
      },
    );
  }


  void updateListView() {

    final Future<dynamic> dbFuture = databaseHelper.initDb();
    var dish = new Dish(widget.item, null, null, null,null,null);
    var rec = new Recipe(widget.item, null, null, null,null,null, null, null, null,null,null, null, null, null);
    dbFuture.then((db) {

      Future<List<Dish>> dishListFuture = databaseHelper.getsearchDishList(dish);
      Future<List<Recipe>> recListFuture = databaseHelper.getsearchRecList(rec);
      dishListFuture.then((dishList) {
        setState(() {
          this.dishList = dishList;
          this.count = dishList.length;
        });
      }
      );
      recListFuture.then((recList) {
        setState(() {
          this.recList = recList;
          this.count = recList.length;
        });
      }
      );
    });
  }
}


