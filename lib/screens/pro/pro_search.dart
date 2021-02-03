import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:recipeapp/data/database_helper.dart';
import 'package:recipeapp/models/dish.dart';
import 'package:recipeapp/models/recipe.dart';
import 'package:recipeapp/screens/beg/beg_dish.dart';
import 'package:recipeapp/screens/beg/dish_list.dart';
import 'package:recipeapp/screens/beg/dish_search.dart';
import 'package:recipeapp/screens/beg/nodish.dart';
import 'TravelCard.dart';
class prosearch extends StatefulWidget {
  @override
  _prosearchState createState() => _prosearchState();
}

class _prosearchState extends State<prosearch> {
  String item;
  final images = [
    "https://img.delicious.com.au/SGxEkFEA/w759-h506-cfill/del/2015/12/strawberry-sour-spritz-26278-2.jpg",
    "https://www.halfbakedharvest.com/wp-content/uploads/2020/06/Raspberry-Lemon-Brioche-Rolls-with-Whipped-Ricotta-Cream-10-700x467.jpg",
    "https://img.delicious.com.au/x76zgBrI/w759-h506-cfill/del/2016/04/masterchef-winner-billy-mckays-ultimate-cheese-toastie-29678-3.jpg",
    "https://www.mygreatrecipesblog.com/wp-content/uploads/2017/09/baklava_greek_food.jpg",
    "https://tse2.mm.bing.net/th?id=OIP.xyPf2qWu4vST9sYex60CwQHaDt&pid=Api&P=0&w=342&h=172",
    "https://img.delicious.com.au/7mIyLp1q/w759-h506-cfill/del/2016/01/matt-prestons-tomato-and-plum-salad-26065-2.jpg",
    "https://img.delicious.com.au/b3wmfJsl/w759-h506-cfill/del/2015/12/seoul-sling-26279-2.jpg",
    "https://i.ytimg.com/vi/rPKcwamHB6A/maxresdefault.jpg",
    "https://lh4.ggpht.com/VFnXerFY89UdNeF9kaqCHQ_r5KmuhijX5O9pdD7yZRLji4mTjmo41_Vqxbp8Ys_V0O6_aDMCjd2SJyW_0Rm5Odk2zMm71TQ",
    "http://i.huffpost.com/gen/1406480/images/o-SWEET-POTATO-FRIES-facebook.jpg",
    "http://4.bp.blogspot.com/_nYszsgdTn4Y/SvSdiH11h-I/AAAAAAAAA_g/3kAnsWdi0CQ/s400/IMG_3714.JPG",
    "https://lh3.googleusercontent.com/4xyabqlRarlOBGlCI7FCCB3YXopKPiVx-jZOx7kuvLQpcutOCOrm6DnjlSPaUY7S1Akp1creC1xhJME6OnM0zRkO7MyxSA",
    "https://tse3.mm.bing.net/th?id=OIP.c8s0luRh7GNItWBoRV7p1QEsDI&pid=Api&P=0&w=251&h=168",
    "https://tse1.mm.bing.net/th?id=OIP.05RHbdb27HNul-r9lwsgaAHaE8&pid=Api&P=0&w=250&h=168",
    "https://tse4.mm.bing.net/th?id=OIP.dPqn-k5y-VnTai1GFyDpGAHaFA&pid=Api&P=0&w=230&h=156",
    "http://www.cookingfromheart.com/wp-content/uploads/2017/02/Carrot-Halwa-4.jpg",
    "http://www.indiansimmer.com/wp-content/uploads/2016/10/paneer-butter-masala.jpg",
    "https://2.bp.blogspot.com/-neI6rKuvsKI/VyN8GMrfhzI/AAAAAAAAHls/hugFFTKYgs8lrtUSXx0iEyG-KZwL4bPbwCLcB/s1600/tandoori-paneer-tikka4.jpg",
    "https://cdn.cpnscdn.com/static.coupons.com/ext/kitchme/images/recipes/1200x800/beef-samosas_5977.jpg",
    "https://www.archanaskitchen.com/images/archanaskitchen/1-Author/garimasgautam-gmail.com/Nepalese_Veg_Pulao.jpg",
    "https://apollosugar.com/wp-content/uploads/2018/12/Masala-Dosa.jpg",
    "https://cookbook.pfeiffer.net.au/files/sambarVegetable.jpg",
    "http://saltandtamarind.com/wp-content/uploads/2017/04/3-4.jpg",
    "https://i.ytimg.com/vi/2WtThIyEQBA/maxresdefault.jpg",
    "https://tse4.mm.bing.net/th?id=OIP.56jkXowu1u5nrcXQKnJiawHaE7&pid=Api&P=0&w=230&h=154",
  ];

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
                                //Here you can add what ever you want
                                travelCard('', ""),
                                travelCard('', ""),
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
