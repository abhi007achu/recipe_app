import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipeapp/screens/beg/beg_dish.dart';
import 'package:recipeapp/screens/beg/beg_fav.dart';
import 'package:recipeapp/screens/beg/beg_search.dart';
import 'package:recipeapp/screens/beg/dish_search.dart';
class beghome extends StatefulWidget {
  @override
  _beghomeState createState() => _beghomeState();
}

class _beghomeState extends State<beghome> {

  ///Image paths and food names
  final images = [
    "assets/pics/burger.jpg", //https://www.simplyrecipes.com/wp-content/uploads/2018/06/HT-Grill-Burger-LEAD-HORIZONTAL.jpg
    "assets/pics/chicken_g.jpg",//https://happilyunprocessed.com/wp-content/uploads/2019/04/Best-Grilled-Chicken-.jpg
    "assets/pics/chiken_f.jpeg",//https://idn.blob.core.windows.net/foodyub/1932334028251181490.jpg
    "assets/pics/pizza.jpg",//https://img.freepik.com/free-photo/delicious-fresh-pizza-served-wooden-table_127657-159.jpg?size=626&ext=jpg
    "assets/pics/seasoned-pasta-salad.jpg",//http://incrediblerestaurants.in/manage/uploads/gallery/iA6kEy713C.jpg
    "assets/pics/Wuhan-noodles-zhihu.jpg",//https://odishatv.in/wp-content/uploads/2016/06/noodles.jpg
  ];

  final foodNames = [
    "Grilled Burger",
    "Grilled Chicken",
    "Crispy Fried Chicken",
    "Pizza",
    "Pasta",
    "Noodles",
  ];
  final cal = [
    "295",
    "226",
    "246",
    "699",
    "500",
    "138",
  ];
  final ing = [
    "10",
    "7",
    "8",
    "14",
    "12",
    "13",
  ];
  final time = [
    "30min",
    "1hr",
    "35min",
    "1hr 30mins",
    "30min",
    "30min",
  ];
  final rec1 = [
    "Bulgur Wheat",
    "Chicken",
    "Chicken",
    "Warm water",
    "Cheese",
    "wheat flour",
  ];
  final rec2 = [
    "Lamb Mince",
    "Olive oil",
    "All purpose flour",
    "Sugar",
    "Penne pasta",
    "water",
  ];
  final rec3 = [
    "Cumin",
    "Cloves",
    "Salt",
    "All purpose flour",
    "Water",
    "oil",
  ];
  final rec4 = [
    "Coriander",
    "Oregano",
    "Black pepper",
    "Salt",
    "Olive oil",
    "salt",
  ];
  final rec5 = [
    "Paprika",
    "Salt",
    "Garlic",
    "Olive oil",
    "Tomato pulp",
    "cabbage",
  ];
  final rec6 = [
    "Garlic",
    "Black pepper",
    "Onion",
    "Pizza sauce",
    "Salt",
    "carrot",
  ];
  final rec7 = [
    "Bun",
    "Lemon",
    "Butter milk",
    "Mushrooms",
    "Corn",
    "spring onion",
  ];
  final rec8 = [
    "water",
    "vinegar",
    "salt",
    "mozzarella",
    "onion",
    "capsicum",
  ];
  final rec9 = [
    "tomato",
    "garlic",
    "cornstarch",
    "tomato",
    "capsicum",
    "garlic",
  ];
  final rec10 = [
    "fresh dill",
    "salt",
    "paprika",
    "Mushrooms",
    "rosemary",
    "soy sauce",
  ];
  final rec11 = [
    "spinach",
    "parsley leaves",
    "garlic powder",
    "oregano",
    "tomato sauce",
    "celery",
  ];
  final rec12 = [
    "onion",
    "thyme",
    "dried basil",
    "chilli flakes ",
    "broccoli",
    "black pepper",
  ];
  final rec13 = [
    "mozarella cheese",
    "dijon mustard",
    "oil",
    "yeast",
    "butter",
    "vinegar",
  ];
  final dec = [
    "Tip the bulghar into a pan, cover with water and boil for 10 mins.Drain really well in a sieve, pressing out any excess water.To make the tzatziki, squeeze and discard the juice from the cucumber, then mix into the yogurt with the chopped mint and a little salt.Work the bulghar into the lamb with the spices, garlic (if using) and seasoning, then shape into 4 burgers.Brush with a little oil and fry or barbecue for about 5 mins each side until cooked all the way through.Serve in the buns (toasted if you like) with the tzatziki, tomatoes, onion and a few mint leaves.",
    "Place chicken, teriyaki sauce, lemon juice, garlic, and sesame oil in a large resealable plastic bag. Seal bag, and shake to coat. Place in refrigerator for 24 hours, turning every so often.Preheat grill for high heat.Lightly oil the grill grate. Remove chicken from bag, discarding any remaining marinade. Grill for 6 to 8 minutes each side, or until juices run clear when chicken is pierced with a fork.",
    "Preheat fryer to 350°F.Thoroughly mix together all the spice mix ingredients.Combine spice mix with flour, brown sugar and salt.Dip chicken pieces in egg white to lightly coat them, then transfer to flour mixture.Turn a few times and make sure the flour mix is really stuck to the chicken.Repeat with all the chicken pieces.Let chicken pieces rest for 5 minutes so crust has a chance to dry a bit.Fry chicken in batches.Breasts and wings should take 12-14 minutes, and legs and thighs will need a few more minutes.Chicken pieces are done when a meat thermometer inserted into the thickest part reads 165°F.Let chicken drain on a few paper towels when it comes out of the fryer.Serve hot.",
    "Preheat the oven to 230°C.Add the sugar and crumble the fresh yeast into warm water.Allow the mixture to stand for 10 – 15 minutes in a warm place (we find a windowsill on a sunny day works best) until froth develops on the surface.Sift the flour and salt into a large mixing bowl, make a well in the middle and pour in the yeast mixture and olive oil.Lightly flour your hands, and slowly mix the ingredients together until they bind.Generously dust your surface with flour.Throw down the dough and begin kneading for 10 minutes until smooth, silky and soft.Place in a lightly oiled, non-stick baking tray (we use a round one, but any shape will do!) 9 Spread the passata on top making sure you go to the edge.Evenly place the mozzarella (or other cheese) on top, season with the oregano and black pepper, then drizzle with a little olive oil.Cook in the oven for 10 – 12 minutes until the cheese slightly colours.When ready, place the basil leaf on top and tuck in!",
    "Bring a large pot of lightly salted water to a boil. Add pasta and cook for 8 minutes or until al dente; drain.Pour olive oil in a large deep skillet over high-heat. Saute onions and garlic until lightly browned. Reduce heat to medium-high and add tomatoes, vinegar and chicken broth; simmer for about 8 minutes.Stir in red pepper, black pepper, basil and cooked pasta, tossing thoroughly with sauce. Simmer for about 5 more minutes and serve topped with grated cheese.",
    "First boil water in a pan with salt and oil.Add noodles to the boiling water and cook them till they are just cooked or al dente.Then rinse noodles in fresh water by placing the colander or sieve under fresh tap water.Drain all the water & set aside.Heat oil in a wok or pan.Increase the heat to a high & add the chopped spring onions.Add the veggies – carrots, capsicum and french beans.Continue to toss & stir fry on a high flame till the veggies are almost cooked.Add the soy sauce, celery, salt and pepper. Mix well.Add cooked noodles. Keep on tossing and stirring till the veggies are mixed well with noodles for a minute or two. Switch off the heat.Check the taste and add more salt, black pepper or soy sauce if required to the stir-fried veg noodles.Serve the veg noodles steaming hot as it is or with some black bean sauce or tomato sauce.",
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ///Container for Header
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "EXPLORE YOUR TASTE!",
                          style: GoogleFonts.playfairDisplay(fontSize: 30,
                              color: Colors.orange),
                        ),
                      ),

                      ///For spacing
                      SizedBox(
                        width: 50,
                      ),
                      IconButton(
                        icon: Icon(Icons.search),
                        color: Colors.grey[800],
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>begsearch()),);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.favorite),
                        color: Colors.grey[800],
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>begfav()),);
                        },
                      ),
                    ],
                  ),
                ),

                ///For vertical Spacing
                SizedBox(
                  height: 32,
                ),

                ///Container For List of Recipes type
                ///Give 25 percent height relative to screen
                Container(
                  height: size.height * 0.25,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return AspectRatio(
                            aspectRatio: 0.9 / 1,

                            ///Width : screen,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    child: ClipRRect(
                                      child: Image.asset(
                                        images[index],
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ),

                                ///Add Text Also,
                                SizedBox(
                                  height: 8,
                                ),

                                ///For spacing
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Text(
                                    "${foodNames[index]} Recipes",
                                    style: GoogleFonts.roboto(
                                        color: Colors.grey[800], fontSize: 11),
                                  ),
                                )
                              ],
                            ));
                      },
                      separatorBuilder: (context, _) => SizedBox(
                        width: 16,
                      ),
                      itemCount: 6),
                ),

                ///For vertical spacing
                SizedBox(
                  height: 32,
                ),

                ///For quick recipe list
                Container(
                  height: size.height * 0.4,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>dapos(foodNames[index])),);
                          },
                          child: AspectRatio(
                              aspectRatio: 0.9 / 1,

                              ///Width : screen,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Hero(
                                      child: Container(
                                        child: ClipRRect(
                                          child: Image.asset(
                                            images[ index],
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                      ),
                                      tag: images[index],
                                    ),
                                  ),

                                  ///Add Text Also,
                                  SizedBox(
                                    height: 8,
                                  ),

                                  ///For spacing
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0),
                                    child: Text(
                                      "${foodNames[index]}",
                                      style: GoogleFonts.roboto(
                                          color: Colors.grey[800],
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              )),
                        );
                      },
                      separatorBuilder: (context, _) => SizedBox(
                        width: 16,
                      ),
                      itemCount: 6),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
