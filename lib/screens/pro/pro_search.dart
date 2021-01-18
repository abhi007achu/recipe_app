import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:recipeapp/screens/beg/beg_dish.dart';
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
  final cal = [
    "236",
    "290",
    "400",
    "306",
    "291",
    "100",
    "229",
    "315",
    "258",
    "312",
    "100",
    "564",
    "450",
    "199",
    "217",
    "386",
    "635",
    "278",
    "262",
    "231",
    "539"
    "139",
    "91",
    "290",
    "266",
  ];
  final ing = [
    "8",
    "7",
    "9",
    "11",
    "13",
    "8",
    "6",
    "12",
    "13",
    "10",
    "9",
    "5",
    "9",
    "12",
    "13",
    "9",
    "13",
    "13",
    "13",
    "13",
    "13",
    "13",
    "10",
    "13",
    "13",
  ];
  final time = [
    "10mins",
    "20min",
    "25min",
    "2hr",
    "15min",
    "10min",
    "5min",
    "15min",
    "45min",
    "20min",
    "1hr 5min",
    "25min",
    "35min",
    "40min",
    "55min",
    "1hr 40min",
    "40min",
    "2hr 30min",
    "1hr 30min",
    "40min",
    "30min",
    "40min",
    "6hrs 10min",
    "3hrs",
    "40min",
  ];
  final rec1 = [
    "strawberries",
    "vanilla ice cream",
    "unsalted butter",
    "slivered almonds",
    "sourdough",
    "plums",
    "grapefruit juice",
    "rice flour",
    "chicken",
    "Potato",
    "white rice flour",
    "chickpea flour",
    "Fish",
    "salmon",
    "fish",
    "carrot",
    "tomatoes",
    "paneer",
    "all purpose flour",
    "basmati rice",
    "dosha batter",
    "onion",
    "channa dal",
    "chicken",
    "tomato",
  ];
  final rec2 = [
    "soda",
    "brioche rolls",
    "eschalot",
    "salt flakes",
    "unsalted butter",
    "Russian tomatoes",
    "Tanqueray London Dry Gin",
    "Chicpea flour",
    "black pepper",
    "oil",
    "banana",
    "ghee",
    "red chilli powder",
    "onion",
    "onion",
    "milk",
    "ginger",
    "onion",
    "salt",
    "tomatoes",
    "potato",
    "tomatoes",
    "fennel seeds",
    "basmati rice",
    "basmati rice",
  ];
  final rec3 = [
    "Johnnie Walker ",
    "egg whites",
    "mushrooms",
    "vanilla bean",
    "plain flour",
    "ricotta",
    "tonic",
    "red chilly",
    "oil",
    "red chilli powder",
    "jaggery",
    "oil",
    "coriander powder",
    "green chilli",
    "oil",
    "ghee",
    "garlic",
    "capsicum",
    "ghee",
    "peas",
    "onion",
    "dal",
    "green chillies",
    "oil",
    "water",
  ];
  final rec4 = [
    "caster sugar",
    "cream of tartar",
    "white bread",
    "clarified butter",
    "cheddar cheese",
    "red wine vinegar",
    "grapefruit",
    "salt",
    "onion",
    "salt",
    "ghee",
    "sugar",
    "turmeric powder",
    "red chilli powder",
    "red chilli powder",
    "sugar",
    "butter",
    "yogurt",
    "water",
    "carrots",
    "green chillies",
    "turmeric powder",
    "dry red chillies",
    "ginger garlic paste",
    "oil",
  ];
  final rec5 = [
    "lemons",
    "caster sugar",
    "truffle oil",
    "filo pastry",
    "apple cider",
    "salt flakes",
    "springs of thyme",
    "onion",
    "salt",
    "black pepper",
    "coconut meat raw",
    "water",
    "oil",
    "garlic",
    "green cardamon",
    "chili powder",
    "ginger garlic paste",
    "salt",
    "potatoes",
    "potatoes",
    "oil",
    "sambar powder",
    "ginger",
    "coreander powder",
    "onions",
  ];
  final rec6 = [
    "Ice",
    "Caramel sauce",
    "sliced cheddar",
    "honey",
    "virgin olive oil",
    "virgin olive oil",
    "crushed ice",
    "curry leaves",
    "chili powder",
    "curry leaves",
    "cashew nut",
    "nil",
    "salt",
    "curry leaves",
    "turmeric powder",
    "cashew",
    "water",
    "chili powder",
    "peas",
    "ginger",
    "urad dal",
    "mustard powder",
    "cinnamon stick",
    "garam masala",
    "green chilli",
  ];
  final rec7 = [
    "Vanilla extract",
    "vanilla extract",
    "thyme leaves",
    "caster sugar",
    "gruyere cheese",
    "basil leaves",
    "nil",
    "ginger",
    "curry leaves",
    "coreander powder",
    "cardmom",
    "nil",
    "lemon juice",
    "coreander powder",
    "tomatoes",
    "golden raisins",
    "paneer",
    "turmeric powder",
    "sunflower oil",
    "green chilly",
    "ginger",
    "curry leaves",
    "onion",
    "salt",
    "red chili powder",
  ];
  final rec8 = [
    "black pepper",
    "nil",
    "white wine",
    "cloves",
    "parsley leaves",
    "ground white pepper",
    "nil",
    "cashwes",
    "coriander powder",
    "mustard seed",
    "raisins",
    "nil",
    "corn flour",
    "oil",
    "fenugreek seeds",
    "saffron strands",
    "green chili",
    "cumin powder",
    "ginger",
    "cloves",
    "salt",
    "oil",
    "oil",
    "turmeric powder",
    "turmeric powder",
  ];
  final rec9 = [
    "nil",
    "nil",
    "taleggio cheese",
    "orange zest",
    "worcestershire sauce",
    "nil",
    "nil",
    "oil",
    "garam masala",
    "hing",
    "baking soda",
    "turmeric powder",
    "nil",
    "nil",
    "coconut shredded",
    "almonds",
    "garam masala",
    "coriander powder",
    "red chili powder",
    "stone flower",
    "garlic",
    "salt",
    "asafoetida",
    "coreander leaves",
    "salt",
  ];
  final rec10 = [
    "nil",
    "nil",
    "nil",
    "orange juice",
    "egg",
    "nil",
    "nil",
    "mint leaves",
    "ginger garlic paste",
    "urad dal",
    "nil",
    "water",
    "salt",
    "nil",
    "tamarind",
    "nil",
    "cream",
    "chaat masala",
    "cumin seeds",
    "black pepper",
    "red chillies",
    "green chillies",
    "salt",
    "green chillies",
    "fennel seeds",
  ];
  final rec11 = [
    "nil",
    "nil",
    "nil",
    "semolina",
    "dijon mastard",
    "nil",
    "nil",
    "green chilly",
    "fennel seeds",
    "nil",
    "nil",
    "nil",
    "nil",
    "cilantro",
    "curry leaves",
    "nil",
    "sugar",
    "black pepper powder",
    "coriander leaves",
    "cashews",
    "turmeric powder",
    "tamarind paste",
    "nil",
    "ghee",
    "cinnamon",
  ];
  final rec12 = [
    "nil",
    "nil",
    "nil",
    "nil",
    "lemon",
    "nil",
    "nil",
    "carom seeds",
    "turmeric powder",
    "nil",
    "nil",
    "nil",
    "nil",
    "fennel seeds",
    "coreander powder",
    "nil",
    "cashew",
    "lemon juice",
    "cinnamon ",
    "onion",
    "channa dal",
    "asafoetida",
    "nil",
    "red chilli powder",
    "bay leaves",
  ];
  final rec13 = [
    "nil",
    "nil",
    "nil",
    "nil",
    "watercress and mixed leaves",
    "nil",
    "nil",
    "nil",
    "green chillies",
    "nil",
    "nil",
    "nil",
    "nil",
    "nil",
    "cilantro",
    "nil",
    "salt",
    "salt",
    "black peppercorns",
    "salt",
    "coconut shreded",
    "fenugreek seeds",
    "nil",
    "fried onion",
    "cloves",
  ];

  final dec = [
    "Remove the rind in strips from two lemons leaving as much of the bitter pith behind as you can. A sharp veg peeler is great for this job. Reserve on damp kitchen towel.In batches, place the strawberries in a cocktail shaker or straight-sided jug and muddle with the caster sugar and vanilla extract (1tsp of sugar and 1/4tsp of vanilla for each 100g of strawberries). Muddle together so the strawberries free their juiciness and break down.Juice the lemons onto the strawberries (the juice of half a lemon for each 100g of strawberries). Mix.Add the whisky and shake if you’ve got a shaker or stir well if you haven’t.Pour the strawberry mix over ice, top with soda to taste, stir and finally garnish with a little black pepper, a twisted slice of lemon peel, and a slice of strawberry.",
    "Place the ice cream scoops on a baking tray and freeze for 5 minutes until firm.Slice the top off the brioche rolls, then carefully scoop out the middle, taking care not to break through the crust. Place an ice cream scoop inside each roll, replace the tops and return to the freezer for 10 minutes to firm up.Meanwhile, in a clean bowl, whisk the eggwhites with cream of tartar and vanilla extract, using electric beaters, until soft peaks form. Gradually add the sugar, whisking constantly, until stiff, glossy peaks form.Spoon meringue on top of each brioche and use a kitchen blowtorch to brown the meringue until golden. Alternatively, preheat a grill to high and grill buns for 30 seconds or until meringue is tinged golden. Serve immediately with caramel sauce, if using.",
    "Melt 20g butter in a small frypan over medium heat. Add eschalot and cook, stirring, for 1 minute or until fragrant.Add the mushroom and cook, stirring, for 2 minutes, then add the thyme and verjuice and cook for a further 1 minute or until liquid has completely reduced.Stir in truffle oil and season. Remove from heat and set aside to cool slightly.Place cheddar on one slice of bread. Top with the mushroom mixture and Taleggio. Season, then sandwich with the remaining slice of bread.Melt remaining 30g butter in a small frypan over medium-low heat. Carefully place the sandwich in the pan and cook without turning, for 3 minutes or until base is golden. Remove from pan.Sprinkle the grated cheddar evenly in the centre of the frypan, then place the sandwich, untoasted-side down, over the cheese (this has to be done quickly to ensure the cheese will stick to the outside of the toastie and form a wonderful crust).Cook for a further 3 minutes or until golden, adding more butter if necessary to prevent sticking.Cut in half and sprinkle with extra thyme leaves and salt flakes to serve.",
    "Place the almonds, semolina, salt and vanilla seeds (reserve the pod for the syrup) in a food processor and pulse until finely chopped (take care not to overprocess otherwise it will become a paste).Lightly brush a baking dish (about 33 cm × 23 cm) with clarified butter. Place a sheet of filo in the prepared dish, folding any overhanging pastry into the tray, and brush with clarified butter. Layer and butter another six sheets of pastry, then sprinkle a good handful of the almond mixture evenly over the top. Lay another sheet of filo on top, brush with butter and top with another handful of almonds. Repeat this layering until you have used all the almond mixture. Press down gently on the baklava to compress the nuts. Top with a sheet of filo and brush with butter, then layer and butter another six sheets of pastry. Press again firmly to compress the layers and thoroughly brush the top with butter. Transfer to the fridge for 1 hour to set.Preheat the oven to 170°C (fan-forced).Score the baklava lengthways into five strips about 4.5 cm wide (you should only cut through the top layers of pastry), then cut widthways into seven strips. Cut across each square piece to form a triangle, and stud each one with a clove. Bake for 40 minutes or until golden.Meanwhile, combine the sugar, honey, orange zest and juice, reserved vanilla pod and 450 ml water in a saucepan and bring to the boil, stirring until the sugar has dissolved. Reduce the heat and simmer for 2 minutes, then set aside to cool to room temperature.Remove the baklava from the oven and cool for 5 minutes, then strain the syrup evenly over the top. Allow the baklava to cool completely (this will take a good few hours), then cut into pieces following the scored lines.",
    "Preheat oven grill to high. Place sourdough slices in a single layer on a baking tray. Grill, turning, for 2 minutes or until golden.Melt butter in a pan over low heat. Add flour and whisk to combine. Cook, stirring, for 1 minute, then increase heat to medium and gradually add cider, whisking constantly, until a thick paste forms. Remove from heat, add cheese, parsley, Worcestershire sauce, egg yolks and 2 tbs mustard. Season. Return pan to medium heat and cook, stirring, for 2 minutes or until thick and smooth. Set aside.In two batches, heat 2 tsp oil in a frypan over medium heat. Break 4 eggs into pan. Fry for 2-3 minutes until whites are set and yolks are runny. Remove from pan and set aside. Repeat with another 2 tsp oil and remaining 4 eggs. Place 1 egg on each slice of toast and spoon over cheese sauce. Grill for 3-4 minutes until golden.Meanwhile, combine lemon juice, and remaining 30g mustard and 2 tbs olive oil in bowl. Season and toss with salad leaves.Serve rarebit topped with a salad.",
    "For the dressing, combine all ingredients in a bowl. Set aside.Slice the cheeks off the plums, then cut into wedges. Place the tomatoes and plum wedges in a bowl, add the dressing and toss well to coat.To serve, arrange the tomatoes and plums in a serving bowl or on a platter. Scatter the ricotta over the salad, then place the basil leaves over the top as garnish. Serve immediately.",
    "Pour your grapefruit juice in a large (2lt) jug. Place jug, gin and tonic in the fridge to chill until the guests arrive. If there is space in the freezer place your highball glasses in there to chill. Alternatively ﬁll the glasses with ice before your guests arrive.To serve, add the gin and the tonic into the jug.Take the chilled glasses, draining them of any melted ice if required, and reﬁll with ice. Pour over the Seoul Sling.Garnish with an elegant slice of grapefruit and your herb of choice. Spank the herb and twist the wedge gently over the glass ﬁrst to release their aromas.",
    "Slice the onion thinly and chop the green chilies finely.In a bowl add besan flour, rice flour, salt, red chili powder, asafoetida, turmeric powder and mix well.Add the sliced onion, chopped green chilies, curry leaves and mix well. Sprinkle water little by little and make a thick batter. The batter should be thick and sticky.In a hot oil drop the batter, little by little and deep fry in a medium flame until the pakoda turns into crispy.",
    "Chop the chicken into small pieces and slice the onions thinly. In a pan heat oil, add in the fennel seeds, curry leaves, green chilies, sliced onion and cook until onion becomes soft.Add the turmeric powder, ginger garlic paste mix well and cook until the ginger garlic paste loses its raw smell.Add the chopped chicken pieces, coriander powder, red chili powder, salt, black pepper powder, garam masala and mix well. Cover and cook, until chicken, get cooked thoroughly over a medium heat. Make sure to stir in between to avoid burning the onions and spices.Take off the lid and mix in the crushed whole black pepper. Garnish it with chopped coriander leaves.",
    "Chop the potatoes into small pieces. In a pan heat oil add mustard seeds and allow it to splutter.Add urad dal and cook until the colour changes into golden brown. Add asafoetida and mix well in the oil. Add curry leaves, chopped potatoes and mix well.Cover and cook until potatoes become soft, but not mushy.Add red chili powder, salt, turmeric powder, coriander powder and mix well.Cook uncovered until the potatoes turn crispy. Keep stirring in between to avoid potatoes get burned.Add pepper powder, mix well and serve.",
    "Mash the banana using a fork until smooth.In a wide bowl, add rice flour, crushed cardamom, jaggery syrup (refer above notes on how to make jaggery syrup), baking soda, mashed banana, finely chopped coconut pieces, raisins (optional), roasted cashew nuts (optional) and mix well. Add water slowly and make a smooth batter, it should not be too thick or too thin. Set the batter for an hour.",
    "Sift besan flour separately using a flour sifter and keep it ready. Grease the square shaped bowl or plate with ghee and set aside until needed.Combine oil and melted ghee separately in a bowl and keep it ready.In a sauce pan add a cup of sugar, a cup of water and boil until the syrup becomes slightly thick and sticky.Gradually add the besan flour and mix well without leaving any lumps.Add ghee and oil mixture and mix well. Cook over a low - medium flame until the besan mixture becomes thick. Keep stirring to avoid the besan flour getting burned.Transfer to a greased square shaped bowl or plate and allow to cool completely. Cut them into small rectangle shapes using a knife and serve.",
    "For marinade: In a bowl add red chili powder, coriander powder, turmeric powder, salt and mix well. Add lemon juice and mix well. Add water little by little and make a smooth paste.Cut the tilapia fillets into small pieces and apply the marinade evenly on the fish. Marinate in the refrigerator for 20 minutes.In a separate bowl add corn flour, water and make a thin batter.Heat oil in a pan and dip the marinated fish one by one in the batter and place in the hot oil carefully. Fry until the bottom side of the fish becomes crispy. Flip gently and fry on the other side until crispy.Line a plate with paper towel. Remove the fried fish from the oil and place on the paper towel-lined plate (this helps to absorb the excess oil from fish). Garnish with sliced onion and lemon if desired and serve.",
    "Place the salmon fillet on a hot skillet, cover and cook on both sides, until the salmon gets cooked or until flakes easily with a fork. Flake the cooked salmon using a fork into tiny chunks and keep aside.Heat oil in a pan add fennel seeds, chopped garlic and cook until garlic changes its color slightly.Add the chopped green chilies, curry leaves, chopped onion and cook until onion becomes soft.Add the flaked salmon, turmeric powder, coriander powder, red chili powder, salt and mix well. Cook for 5 minutes on a medium flame until the salmon color starts changing to golden brown slightly, keep stirring in between to avoid getting burned. Garnish with chopped coriander leaves.",
    "In a pan, heat 6 tbsp of oil, add 1 cup of chopped onion and cook until onions become soft.Add the 3 chopped tomato and cook until tomatoes become soft. Allow it to cool.In a mixie or blender, add cooked tomato and onion mixture, coriander powder, red chili powder, fennel seeds, grated coconut and grind to a smooth paste.In a separate pan, heat 4 tbsp of oil, add fenugreek seeds, chopped garlic, curry leaves, remaining 1 cup of onion, green chilies, turmeric powder and cook until onion becomes soft. Add a chopped tomato and cook until tomato becomes soft. Add the grounded mixture and allow to boil for a minute.Soak tamarind in water for few minutes and squeeze the juice out of it and add it to the curry. Check for the salt and allow it to boil.Add the fish and cook for 5 minutes without mixing. Turn off the heat and keep the curry for minimum 2 hours for more flavor before serving.",
    "In a kadai or deep thick bottomed pan combine milk and grated carrots.On a low to medium flame, bring the whole mixture to a boil and then simmer.While the mixture is simmering on a low flame, keep on stirring in between.The grated carrots will cook in the milk and the milk will start to reduce and evaporate.When the milk has 75% reduced, add the ghee, sugar and powdered cardamom to the mixture.Stir well and continue to simmer and cook on a low flame.Do keep on stirring the halwa in between.Towards the end, add the cashews, almonds, saffron and raisins. Simmer the halwa till all the milk is evaporated. Switch off the burner.Serve gajar halwa hot, warm or you can also serve it cold. garnish with some chopped dry fruits while serving.",
    "Add water and mix very well. Simmer on a low flame.The curry will come to a boil. After 2 to 3 minutes of boiling, add ginger julienne. Reserve a few for garnishing. The curry will also begin to thicken.Add julienned ginger and green chillies, salt and sugar and simmer till the curry begins to thicken.After 3 to 4 minutes, add slit green chillies. also add salt as per taste and ½ to 1 teaspoon sugar (optional). You can vary the sugar quantity from ¼ tsp to 1 teaspoon or more depending on the sourness of the tomatoes. Sugar is optional and you can skip it too. If you add cream, then you will need to add less sugar.Mix very well and simmer for a minute.After the gravy thickens to your desired consistency, then add the paneer cubes and stir gently. i keep the gravy to a medium consistency. After that add crushed kasuri methi (dry fenugreek leaves), garam masala and cream. Gently mix and then switch off the flame. ",
    "Chop the paneer in square shaped cubes.Dice the onions and capsicum in 1 or 1.5 inches square pieces.In a large bowl, take the hung curd (greek yogurt) and whisk it lightly till it becomes smoothMix very well. Check the taste and add more seasonings if required.After 2 hours thread the paneer and veggies alternately on bamboo skewers. Soak or rinse the bamboo skewers before threading. Preheat the oven for 15 to 20 minutes at 230 or 240 degree celsius or 464 degrees Fahrenheit. Use only the top heating element. Place back on the top rack in the oven and continue to grill for 3 to 5 minutes more till the edges of the paneer are golden or slightly charred. Do not grill for a long time as then paneer cubes becomes hard. Remove from the oven and then place the paneer cubes on a serving plate. Sprinkle some chaat masala and lemon juice.Serve paneer tikka with mint chutney and onion rings with lemon wedges",
    "Take the flour, carom seeds, salt in a bowl. Mix well and add ghee.Add water in parts and knead to a firm dough.Cover the dough with a moistened napkin and set aside for 30 minutes.Steam or boil the potatoes and peas till are cooked completely. Drain them of any extra water in a colander or sieve.Dry roast all the whole spices mentioned in the above list until fragrant taking care not to burn them.Heat oil in a pan. add the cumin seeds and crackle them.Add the ginger and green chillies. Sauté for a few seconds until the raw aroma of ginger goes away.Stir and sauté on a low heat for 1 to 2 minutes.Add the potato cubes. Mix very well and sauté for about 2 to 3 minutes on low heat with frequent stirring.Set aside the potato filling aside to cool at room temperature.Then roll it with a rolling pin keeping the thickness to 1 mm throughout.With a brush or with your finger tips, spread some water all over the edges.Press the edges so that they get sealed well.Prepare all the samosa this way and keep covered with a moist kitchen napkin.Now heat oil for deep frying in a kadai or pan. Once the oil becomes hot (test by adding a small piece of dough – it should come up quickly once added to the hot oil). Gently slide the prepared stuffed samosa & quickly reduce the flame to low.Add the samosa and then lower the flame, thereby decreasing the temperature of oil.Serve samosa hot or warm with coriander chutney, tamarind chutney or tomato ketchup.",
    "Rinse the rice till the water runs clears of starch.Then soak the basmati rice in water for 20 to 30 minutes.Heat 3 tbsp ghee or oil in the pressure cooker. Add sliced onions.In the same oil, add cashews and brown them. Keep the fried cashews also aside.In the same oil or ghee, add the whole spices - cinnamon, tej patta, black cardamom, green cardamoms, cloves, black pepper, stone flower, cumin seeds and mace. Saute for a few seconds till the spices become aromatic.Add sliced onions. Stir and saute the onions on a low flame. Saute till the onions become golden.Then add ginger+garlic+green chili paste. Stir and saute till the raw aroma of the ginger and garlic goes away. About 15 to 20 seconds.Add all the chopped veggies, including tomatoes and peas.Add the drained basmati rice. Saute gently for 1 to 2 minutes till the oil/ghee has coated the rice grains evenly. Pour water.Add salt and stir the pulao gently.Pressure cook vegetable pulao for 2 to 3 whistles on a medium to high flame. 2 whistles will give you a less softer texture. For more softer texture cook for 3 whistles.Serve the pulao garnished with fried onions, cashews and mint or coriander leaves. ",
    "Add garlic, chopped onion and cook until the onion becomes soft. Add grated coconut, tamarind and saute until the nice coconut aroma comes out. Allow to cool and grind to a smooth paste by adding water little by little.For potato masala: Peel the potatoes and cut them roughly. In a saucepan add water, chopped potatoes and boil until the potatoes become tender. Mash the potatoes using a fork or potato masher.In a pan heat oil, add mustard seeds and allow to splutter. Add urad dal and saute until the color changes to golden brown.Add asafoetida and mix well in the oil. Add grated ginger, chopped onion, chopped green chilies and cook until the onion becomes soft. Add turmeric powder and cook until the turmeric powder loses its raw smell.Add water and cook until the onion becomes soft. Add mashed potato, salt and mix well. Garnish with chopped coriander leaves.For Mysore masala dosa: In a non-stick skillet, pour a laddle full of batter and spread into a thin circle. Drizzle oil on the corners of a dosa and cook until the dosa get cooked completely.",
    "Rinse toor dal with water 3 to 4 times until the water runs clear. In a pressure cooker, add toor dal, water, salt, turmeric powder and cook for 4 whistles and let the pressure cooker cool naturally. Uncover the pressure cooker and mash the dal using the back of a ladle.In a saucepan, heat oil, add fenugreek seeds and saute until the color changes to light brown. Add mustard seeds and allow to splutter. Add urad dal and saute until the color changes to golden brown.Add asafoetida (hing) and mix well in the oil. Add chopped onion, curry leaves, green chilies and cook until the onion becomes soft.Add chopped okra, sprinkle little amount of water and cook until the okra becomes soft.Add chopped tomatoes and cook until the tomatoes become soft.Add tamarind paste, water, mix well and bring to a boil. Add sambar powder and boil until the sambar powder loses its raw smell.Add mashed dal, salt and mix well. Bring the sambar to a boil and garnish with chopped coriander leaves. Sambar is ready to serve.",
    "Soak the channa dal in cold water for about 5 hours and drain the water completely.Grind fennel seeds, cinnamon stick, green chilies, red chilies, ginger to a coarse paste first.Add channa dal and grind it together with spices to a coarse paste (this step helps to blend and mix the spices with channa dal without staying as it is or getting stuck in between while grinding.In a medium bowl add grounded channa dal mixture, chopped onion, salt, hing (asafoetida) and mix well.Divide the batter into small portions and roll it into the ball shape. Press in between the palms and make a patty. Deep fry it in a medium flame until the color changes into golden brown.",
    "Cut the chicken into bigger pieces and marinate it with coriander powder, red chili powder, garam masala, turmeric powder, ginger garlic paste, yogurt, oil, mint leaves, green chilies, chopped coriander leaves, lemon juice, fried onions and cumin powder. Refrigerate it for at least 2 hours.Soak basmati rice in cold water for at least an hour. In the meantime, you can prepare fried onions if you do not have store bought one. Slice the onions thinly and sprinkle rice flour. Mix well and deep fry it in a hot oil until the color changes into golden brown.After a couple of hours pull out the chicken from refrigerator and arrange evenly on a wide pan. Avoid crowding the chicken too much, each and every piece must be touching the bottom of a pan.In a separate pan bring water to boil. When its start boiling add salt, cumin seeds, cinnamon stick, cloves, bay leaf and cardamom to the boiling water. Add a tsp of oil and mix well. Check for the salt at this time before adding rice. The water should not be too salty nor saltless, it should be in a correct taste. Add rice to the boiling water and mix well. Cook until the rice gets 75 % done.Drain the rice completely using a colander and lay it on the chicken evenly.Top the rice with kewra water, rose water, ghee, chopped coriander leaves and fried onions. Cover the pan with a tight lid and cook over high heat for five mins, medium heat for 15 minutes and low flame for 20 mins. Keep the biryani covered for at least 10 minutes after cooking and serve.",
    "Soak the rice in cold water for about an hour.In a large pan, heat oil, add fennel seeds, cinnamon stick, cloves, bay leaves and cardamoms.Add sliced onion and green chilies, cook until onion becomes soft. Add ginger garlic paste and cook until it loses its raw smell. Add chopped tomatoes, salt, red chili powder, turmeric powder and mix well. Cook until tomatoes become soft.Add mint leaves and chopped coriander leaves. Mix well. Add the soaked rice and mix well, until the tomato mixture coated evenly with the rice.Add water and coconut milk. Mix well and check for the salt, when it starts boiling, cover the pan with a lid and cook until all the liquid contents get absorbed by the rice. Garnish it with chopped coriander leaves.",
  ];
  void search()
  {
    if (item == "Strawberry sour spritz")
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>dispdish(foodNames[0],time[0],cal[0],ing[0],dec[0],images[0],rec1[0],rec2[0],rec3[0],rec4[0],rec5[0],rec6[0],rec7[0],rec8[0],rec9[0],rec10[0],rec11[0],rec12[0],rec13[0])),);
    }
    else if (item == "Ice cream brioche rolls")
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>dispdish(foodNames[1],time[1],cal[1],ing[1],dec[1],images[1],rec1[1],rec2[1],rec3[1],rec4[1],rec5[1],rec6[1],rec7[1],rec8[1],rec9[1],rec10[1],rec11[1],rec12[1],rec13[1])),);
    }
    else if (item == "Cheese toastie")
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>dispdish(foodNames[2],time[2],cal[2],ing[2],dec[2],images[2],rec1[2],rec2[2],rec3[2],rec4[2],rec5[2],rec6[2],rec7[2],rec8[2],rec9[2],rec10[2],rec11[2],rec12[2],rec13[2])),);
    }
    else if (item == "Baklava")
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>dispdish(foodNames[3],time[3],cal[3],ing[3],dec[3],images[3],rec1[3],rec2[3],rec3[3],rec4[3],rec5[3],rec6[3],rec7[3],rec8[3],rec9[3],rec10[3],rec11[3],rec12[3],rec13[3])),);
    }
    else if (item == "Welsh rarebit")
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>dispdish(foodNames[4],time[4],cal[4],ing[4],dec[4],images[4],rec1[4],rec2[4],rec3[4],rec4[4],rec5[4],rec6[4],rec7[4],rec8[4],rec9[4],rec10[4],rec11[4],rec12[4],rec13[4])),);
    }
    else if (item == "Tomato and plum salad")
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>dispdish(foodNames[5],time[5],cal[5],ing[5],dec[5],images[5],rec1[5],rec2[5],rec3[5],rec4[5],rec5[5],rec6[5],rec7[5],rec8[5],rec9[5],rec10[5],rec11[5],rec12[5],rec13[5])),);
    }
    else if (item == "Seoul sling")
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>dispdish(foodNames[6],time[6],cal[6],ing[6],dec[6],images[6],rec1[6],rec2[6],rec3[6],rec4[6],rec5[6],rec6[6],rec7[6],rec8[6],rec9[6],rec10[6],rec11[6],rec12[6],rec13[6])),);
    }
    else if (item == "Onion pakoda")
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>dispdish(foodNames[7],time[7],cal[7],ing[7],dec[7],images[7],rec1[7],rec2[7],rec3[7],rec4[7],rec5[7],rec6[7],rec7[7],rec8[7],rec9[7],rec10[7],rec11[7],rec12[7],rec13[7])),);
    }
    else if (item == "Pepper chicken")
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>dispdish(foodNames[8],time[8],cal[8],ing[8],dec[8],images[8],rec1[8],rec2[8],rec3[8],rec4[8],rec5[8],rec6[8],rec7[8],rec8[8],rec9[8],rec10[8],rec11[8],rec12[8],rec13[8])),);
    }
    else if (item == "Potato fry")
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>dispdish(foodNames[9],time[9],cal[9],ing[9],dec[9],images[9],rec1[9],rec2[9],rec3[9],rec4[9],rec5[9],rec6[9],rec7[9],rec8[9],rec9[9],rec10[9],rec11[9],rec12[9],rec13[9])),);
    }
    else if (item == "Unniappam")
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>dispdish(foodNames[10],time[10],cal[10],ing[10],dec[10],images[10],rec1[10],rec2[10],rec3[10],rec4[10],rec5[10],rec6[10],rec7[10],rec8[10],rec9[10],rec10[10],rec11[10],rec12[10],rec13[10])),);
    }
    else if (item == "Mysore Pak")
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>dispdish(foodNames[11],time[11],cal[11],ing[11],dec[11],images[11],rec1[11],rec2[11],rec3[11],rec4[11],rec5[11],rec6[11],rec7[11],rec8[11],rec9[11],rec10[11],rec11[11],rec12[11],rec13[11])),);
    }
    else if (item == "Fish fry")
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>dispdish(foodNames[12],time[12],cal[12],ing[12],dec[12],images[12],rec1[12],rec2[12],rec3[12],rec4[12],rec5[12],rec6[12],rec7[12],rec8[12],rec9[12],rec10[12],rec11[12],rec12[12],rec13[12])),);
    }
    else if (item == "Fish putt")
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>dispdish(foodNames[13],time[13],cal[13],ing[13],dec[13],images[13],rec1[13],rec2[13],rec3[13],rec4[13],rec5[13],rec6[13],rec7[13],rec8[13],rec9[13],rec10[13],rec11[13],rec12[13],rec13[13])),);
    }
    else if (item == "Fish curry")
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>dispdish(foodNames[14],time[14],cal[14],ing[14],dec[14],images[14],rec1[14],rec2[14],rec3[14],rec4[14],rec5[14],rec6[14],rec7[14],rec8[14],rec9[14],rec10[14],rec11[14],rec12[14],rec13[14])),);
    }
    else if (item == "Carrot halwa")
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>dispdish(foodNames[15],time[15],cal[15],ing[15],dec[15],images[15],rec1[15],rec2[15],rec3[15],rec4[15],rec5[15],rec6[15],rec7[15],rec8[15],rec9[15],rec10[15],rec11[15],rec12[15],rec13[15])),);
    }
    else if (item == "Paneer Butter Masala")
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>dispdish(foodNames[16],time[16],cal[16],ing[16],dec[16],images[16],rec1[16],rec2[16],rec3[16],rec4[16],rec5[16],rec6[16],rec7[16],rec8[16],rec9[16],rec10[16],rec11[16],rec12[16],rec13[16])),);
    }
    else if (item == "Paneer Tikka")
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>dispdish(foodNames[17],time[17],cal[17],ing[17],dec[17],images[17],rec1[17],rec2[17],rec3[17],rec4[17],rec5[17],rec6[17],rec7[17],rec8[17],rec9[17],rec10[17],rec11[17],rec12[17],rec13[17])),);
    }
    else if (item ==  "Samosa")
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>dispdish(foodNames[18],time[18],cal[18],ing[18],dec[18],images[18],rec1[18],rec2[18],rec3[18],rec4[18],rec5[18],rec6[18],rec7[18],rec8[18],rec9[18],rec10[18],rec11[18],rec12[18],rec13[18])),);
    }
    else if (item == "Vegetable Pulao")
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>dispdish(foodNames[19],time[19],cal[19],ing[19],dec[19],images[19],rec1[19],rec2[19],rec3[19],rec4[19],rec5[19],rec6[19],rec7[19],rec8[19],rec9[19],rec10[19],rec11[19],rec12[19],rec13[19])),);
    }
    else if (item == "Masala dosha")
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>dispdish(foodNames[20],time[20],cal[20],ing[20],dec[20],images[20],rec1[20],rec2[20],rec3[20],rec4[20],rec5[20],rec6[20],rec7[20],rec8[20],rec9[20],rec10[20],rec11[20],rec12[20],rec13[20])),);
    }
    else if (item == "Sambar")
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>dispdish(foodNames[21],time[21],cal[21],ing[21],dec[21],images[21],rec1[21],rec2[21],rec3[21],rec4[21],rec5[21],rec6[21],rec7[21],rec8[21],rec9[21],rec10[21],rec11[21],rec12[21],rec13[21])),);
    }
    else if (item == "Parippu vada")
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>dispdish(foodNames[22],time[22],cal[22],ing[22],dec[22],images[22],rec1[22],rec2[22],rec3[22],rec4[22],rec5[22],rec6[22],rec7[22],rec8[22],rec9[22],rec10[22],rec11[22],rec12[22],rec13[22])),);
    }
    else if (item ==  "Biriyani")
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>dispdish(foodNames[23],time[23],cal[23],ing[23],dec[23],images[23],rec1[23],rec2[23],rec3[23],rec4[23],rec5[23],rec6[23],rec7[23],rec8[23],rec9[23],rec10[23],rec11[23],rec12[23],rec13[23])),);
    }
    else if (item ==  "Tomato rice")
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>dispdish(foodNames[24],time[24],cal[24],ing[24],dec[24],images[24],rec1[24],rec2[24],rec3[24],rec4[24],rec5[24],rec6[24],rec7[24],rec8[24],rec9[24],rec10[24],rec11[24],rec12[24],rec13[24])),);
    }
    else
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>dishnotfound()),);
    }

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
            )
          ],
        ),
      ),

    );
  }
}
