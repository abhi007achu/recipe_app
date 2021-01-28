import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class begcalorie extends StatefulWidget {
  @override
  _begcalorieState createState() => _begcalorieState();
}

class _begcalorieState extends State<begcalorie> {
  final formKey = new GlobalKey<FormState>();
  int M1,M2,M3,m1,m2,m3,sum=0;
  String meal1,meal2,meal3,msg='';
  final meals = [
    "Grilled Burger",                 //295
    "Grilled Chicken",                //226
    "Crispy Fried Chicken",           //246
    "Pizza",                          //699
    "Pasta",                          //500
    "Pepper chicken",                 //288
    "Potato fry",                     //312
    "Unniappam",                      //100
    "Mysore Pak",                     //564
    "Fish fry",                       //450
    "Fish putt",                      //199
    "Fish curry",                     //217
    "Carrot halwa",                   //386
    "Paneer Butter Masala",           //635
    "Paneer Tikka",                   //278
    "Samosa",                         //262
    "Vegetable Pulao",                //231
    "Strawberry sour spritz",         //236
    "Ice cream brioche rolls",        //290
    "Cheese toastie",                 //400
    "Baklava",                        //306
    "Welsh rarebit",                  //291
    "Tomato and plum salad",          //100
    "Seoul sling",                    //229
    "Onion pakoda",                   //315
    "Masala dosha",                   //539
    "Sambar",                         //139
    "Parippu vada",                   //91
    "Biriyani",                       //390
    "Tomato rice",                    //266
  ];
  void submit(){
    final form = formKey.currentState;

    if (form.validate()) {
      setState(() {
        form.save();
        sum=0;


        if (meal1 == meals[0])
          m1 = 295;
        else if (meal1 == meals[1])
          m1 = 226;
        else if (meal1 == meals[2])
          m1 = 246;
        else if (meal1 == meals[3])
          m1 = 699;
        else if (meal1 == meals[4])
          m1 = 500;
        else if (meal1 == meals[5])
          m1 = 258;
        else if (meal1 == meals[6])
          m1 = 312;
        else if (meal1 == meals[7])
          m1 = 100;
        else if (meal1 == meals[8])
          m1 = 564;
        else if (meal1 == meals[9])
          m1 = 450;
        else if (meal1 == meals[10])
          m1 = 199;
        else if (meal1 == meals[11])
          m1 = 217;
        else if (meal1 == meals[12])
          m1 = 386;
        else if (meal1 == meals[13])
          m1 = 635;
        else if (meal1 == meals[14])
          m1 = 278;
        else if (meal1 == meals[15])
          m1 = 262;
        else if (meal1 == meals[16])
          m1 = 231;
        else if (meal1 == meals[17])
          m1 = 236;
        else if (meal1 == meals[18])
          m1 =290;
        else if (meal1 == meals[19])
          m1 = 400;
        else if (meal1 == meals[20])
          m1 = 306;
        else if (meal1 == meals[21])
          m1 =  291;
        else if (meal1 == meals[22])
          m1 = 100;
        else if (meal1 == meals[23])
          m1 = 229;
        else if (meal1 == meals[24])
          m1 = 315;
        else if (meal1 == meals[25])
          m1 = 539;
        else if (meal1 == meals[26])
          m1 = 139;
        else if (meal1 == meals[27])
          m1 = 91;
        else if (meal1 == meals[28])
          m1 = 390;
        else if (meal1 == meals[29])
          m1 = 266;
        else
          m1=0;



        if (meal2 == meals[0])
          m2 = 295 ;
        else if (meal2 == meals[1])
          m2 = 226 ;
        else if (meal2 == meals[2])
          m2 = 246 ;
        else if (meal2 == meals[3])
          m2 = 699 ;
        else if (meal2 == meals[4])
          m2 = 500;
        else if (meal2 == meals[5])
          m2 = 258;
        else if (meal2 == meals[6])
          m2 = 312;
        else if (meal2 == meals[7])
          m2 = 100;
        else if (meal2 == meals[8])
          m2 = 564;
        else if (meal2 == meals[9])
          m2 = 450;
        else if (meal2 == meals[10])
          m2 = 199;
        else if (meal2 == meals[11])
          m2 = 217;
        else if (meal2 == meals[12])
          m2 = 386;
        else if (meal2 == meals[13])
          m2 = 635;
        else if (meal2 == meals[14])
          m2 = 278;
        else if (meal2 == meals[15])
          m2 = 262;
        else if (meal2 == meals[16])
          m2 = 231;
        else if (meal2 == meals[17])
          m2 = 236;
        else if (meal2 == meals[18])
          m2 =290;
        else if (meal2 == meals[19])
          m2 = 400;
        else if (meal2 == meals[20])
          m2 = 306;
        else if (meal2 == meals[21])
          m2 =  291;
        else if (meal2 == meals[22])
          m2 = 100;
        else if (meal2 == meals[23])
          m2 = 229;
        else if (meal2 == meals[24])
          m2 = 315;
        else if (meal2 == meals[25])
          m2 = 539;
        else if (meal2 == meals[26])
          m2 = 139;
        else if (meal2 == meals[27])
          m2 = 91;
        else if (meal2 == meals[28])
          m2 = 390;
        else if (meal2 == meals[29])
          m2 = 266;
        else
          m2=0;



        if (meal3 == meals[0])
          m3 = 295;
        else if (meal3 == meals[1])
          m3 = 226;
        else if (meal3 == meals[2])
          m3 = 246;
        else if (meal3 == meals[3])
          m3 = 699;
        else if (meal3 == meals[4])
          m3 = 500;
        else if (meal3 == meals[5])
          m3 = 258;
        else if (meal3 == meals[6])
          m3 = 312;
        else if (meal3 == meals[7])
          m3 = 100;
        else if (meal3 == meals[8])
          m3 = 564;
        else if (meal3 == meals[9])
          m3 = 450;
        else if (meal3 == meals[10])
          m3 = 199;
        else if (meal3 == meals[11])
          m3 = 217;
        else if (meal3 == meals[12])
          m3 = 386;
        else if (meal3 == meals[13])
          m3 = 635;
        else if (meal3 == meals[14])
          m3 = 278;
        else if (meal3 == meals[15])
          m3 = 262;
        else if (meal3 == meals[16])
          m3 = 231;
        else if (meal3 == meals[17])
          m3 = 236;
        else if (meal3 == meals[18])
          m3 =290;
        else  if (meal3 == meals[19])
          m3 = 400;
        else if (meal3 == meals[20])
          m3 = 306;
        else if (meal3 == meals[21])
          m3 =  291;
        else if (meal3 == meals[22])
          m3 = 100;
        else if (meal3 == meals[23])
          m3 = 229;
        else if (meal3 == meals[24])
          m3 = 315;
        else  if (meal3 == meals[25])
          m3 = 539;
        else if (meal3 == meals[26])
          m3 = 139;
        else if (meal3 == meals[27])
          m3 = 91;
        else if (meal3 == meals[28])
          m3 = 390;
        else if (meal3 == meals[29])
          m3 = 266;
        else
          m3=0;


        sum = m1+ m2+ m3;

        if(m1==0 || m2==0 || m3==0)
          {
            sum=0;
            msg='Sorry dish not found :(';
          }
        else if(sum<800)
          {
             msg='LOW calorie Consumption!!!!';
          }
        else if (sum>1500)
          {
             msg='Daily Calorie limit EXCEEDED!!!!';
          }
        else
          {
             msg = 'Stay Healthy :)';
          }
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    var calBtn = Padding(
      padding: const EdgeInsets.all(8.0),
      child: ButtonTheme(
        padding: EdgeInsets.only(),
        buttonColor: Colors.white,
        height: 50,
        minWidth: double.infinity,
        child: RaisedButton(
          child: Text(
            'Calculate',
            style: GoogleFonts.itim(
                textStyle: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold
                )
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          onPressed: () {
            submit();
          },
        ),
      ),
    );
    var calform =
    new Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 0.5),
              child: Container(

                height: 650,
                width: double.infinity,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 1,
                  margin: EdgeInsets.all(10),
                  color: Colors.grey[200],
                  child: Column(
                    children: <Widget>[
                      Container(
                        child:  Center(
                            child:  Column(
                                children : [
                                  Padding(padding: EdgeInsets.only(top: 30.0)),
                                  Text('Calorie ',
                                    style: GoogleFonts.itim(
                                        textStyle: TextStyle(
                                            fontSize: 55.0,
                                            fontWeight: FontWeight.bold
                                        )
                                    ),
                                  ),
                                  new Form(
                                    key: formKey,
                                    child: new Column(

                                      children: <Widget>[
                                        Padding(padding: const EdgeInsets.all(20.0),),
                                        new Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: new TextFormField(

                                            onSaved: (val)=> meal1 = val,
                                            decoration: new InputDecoration(labelText: "Meal 1",
                                              fillColor: Colors.white,
                                              border: OutlineInputBorder(
                                                borderRadius:  BorderRadius.circular(25.0),
                                                borderSide: BorderSide(
                                                    color: Colors.white
                                                ),
                                              ),
                                              labelStyle: GoogleFonts.itim(
                                                  textStyle: TextStyle(
                                                      fontSize: 20.0,
                                                      fontWeight: FontWeight.bold)
                                              ),
                                            ),
                                            validator: (String meal1){
                                              if (meal1.isEmpty) return 'Invalid Value';
                                              else return null;
                                            },
                                          ),
                                        ),
                                        new Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: new TextFormField(

                                            onSaved: (val)=> meal2 = val,
                                            decoration: new InputDecoration(labelText: "Meal 2",
                                              fillColor: Colors.white,
                                              border: OutlineInputBorder(
                                                borderRadius:  BorderRadius.circular(25.0),
                                                borderSide: BorderSide(
                                                    color: Colors.white
                                                ),
                                              ),
                                              labelStyle: GoogleFonts.itim(
                                                  textStyle: TextStyle(
                                                      fontSize: 20.0,
                                                      fontWeight: FontWeight.bold)
                                              ),
                                            ),
                                            validator: (String meal2){
                                              if (meal2.isEmpty) return 'Invalid Value';
                                              else return null;
                                            },
                                          ),
                                        ),
                                        new Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: new TextFormField(

                                            onSaved: (val)=> meal3 = val,
                                            decoration: new InputDecoration(labelText: "Meal 3",
                                              fillColor: Colors.white,
                                              border: OutlineInputBorder(
                                                borderRadius:  BorderRadius.circular(25.0),
                                                borderSide: BorderSide(
                                                    color: Colors.white
                                                ),
                                              ),
                                              labelStyle: GoogleFonts.itim(
                                                  textStyle: TextStyle(
                                                      fontSize: 20.0,
                                                      fontWeight: FontWeight.bold)
                                              ),
                                            ),

                                            validator: (String meal3){
                                              if (meal3.isEmpty) return 'Invalid Value';
                                              else return null;
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ]
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15.0,
                          right: 50.0,
                        ),

                      ),

                      SizedBox(height: 10),
                      calBtn,
                      SizedBox(height: 10),



                      Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('$sum ',
                            style: GoogleFonts.itim(
                                textStyle: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold
                                )
                            ),
                          ),

                          Text(
                            '$msg',
                            style: GoogleFonts.itim(
                                textStyle: TextStyle(
                                    fontSize: 25.0,
                                    color: Colors.redAccent[700],
                                    fontWeight: FontWeight.bold
                                )
                            ),
                          ),

                          SizedBox(
                            height: 6.0,
                          ),
                        ],
                      ),

                      //Icon(
                      // LineAwesomeIcons.heart,
                      //  color: lightColor,
                      //  size: 36,
                      //)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: calform,
      ),
    );
  }
}
