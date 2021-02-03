import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:recipeapp/data/database_helper.dart';
import 'package:recipeapp/models/dish.dart';
import 'package:recipeapp/models/recipe.dart';
import 'package:recipeapp/screens/beg/beg_dish.dart';
import 'package:recipeapp/screens/beg/dish_search.dart';
import 'TravelCard.dart';
import 'dish_list.dart';
import 'nodish.dart';
class begsearch extends StatefulWidget {
  @override
  _begsearchState createState() => _begsearchState();
}

class _begsearchState extends State<begsearch> {
  String item;
  //List name;

  final foodNames = [
    "Strawberry sour spritz",
    "Ice cream brioche rolls",
    "Cheese toastie",
    "Baklava",
    "Welsh rarebit",
    "Tomato and plum salad",
    "Seoul sling",
    "Onion pakoda",
    "Pepper chicken",
    "Potato fry",
    "Unniappam",
    "Mysore Pak",
    "Fish fry",
    "Fish putt",
    "Fish curry",
    "Carrot halwa",
    "Paneer Butter Masala",
    "Paneer Tikka",
    "Samosa",
    "Vegetable Pulao",
    "Masala dosha",
    "Sambar",
    "Parippu vada",
    "Biriyani",
    "Tomato rice",
  ];

  void search()
  {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>dapos(item)),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFF6F7FF),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Let's start by adding the text
            Text(
              "TASTE DIARY",
              style: TextStyle(
                color: Colors.black,
                fontSize: 26.0,
                fontWeight: FontWeight.w600,
              ),

            ),
            Text(
              "Find Your Recipe",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            //Now let's add some elevation to our text field
            //to do this we need to wrap it in a Material widget
            Material(
              elevation: 10.0,
              borderRadius: BorderRadius.circular(30.0),
              shadowColor: Color(0x55434343),
              child: TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: "Search your Recipe here....",

                  prefixIcon: IconButton(
                    icon: Icon(Icons.search),
                    color: Colors.black54,
                    onPressed: () {
                      search();
                    },
                  ),
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.text,
                onChanged:  (val) => item = val,
              ),
            ),

            SizedBox(height: 30.0),
            //Now let's Add a Tabulation bar
            DefaultTabController(
              length: 3,
              child: Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      height: 300.0,
                      child: TabBarView(
                        children: [
                          //Now let's create our first tab page
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                //Now let's add and test our first card
                                travelCard('https://img.delicious.com.au/b3wmfJsl/w759-h506-cfill/del/2015/12/seoul-sling-26279-2.jpg', "Seoul Sling"),
                                travelCard('https://img.delicious.com.au/x76zgBrI/w759-h506-cfill/del/2016/04/masterchef-winner-billy-mckays-ultimate-cheese-toastie-29678-3.jpg', "Cheese toastie"),
                                travelCard('https://www.archanaskitchen.com/images/archanaskitchen/1-Author/garimasgautam-gmail.com/Nepalese_Veg_Pulao.jpg', "Vegetable Pulao"),
                                travelCard('http://www.cookingfromheart.com/wp-content/uploads/2017/02/Carrot-Halwa-4.jpg',"Carrot halwa"),
                                travelCard('https://2.bp.blogspot.com/-neI6rKuvsKI/VyN8GMrfhzI/AAAAAAAAHls/hugFFTKYgs8lrtUSXx0iEyG-KZwL4bPbwCLcB/s1600/tandoori-paneer-tikka4.jpg',"Paneer Tikka"),
                                travelCard('https://cdn.cpnscdn.com/static.coupons.com/ext/kitchme/images/recipes/1200x800/beef-samosas_5977.jpg', "Samosa"),
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              child: RaisedButton(
                child:
                new Text(
                  "Dish List",
                  style: GoogleFonts.poppins(
                      textStyle:TextStyle(
                        color: Colors.black,
                        //  fontWeight: FontWeight.bold,
                        fontSize: 10,
                      )
                  ),
                  textScaleFactor: 2.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>apos()),);
                },
              ),
            ),
          ],
        ),
      ),

    );
  }
}
