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
    "Grilled Burger",
    "Grilled Chicken",
    "Crispy Fried Chicken",
    "Pizza",
    "Pasta",
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
    "Strawberry sour spritz",
    "Ice cream brioche rolls",
    "Cheese toastie",
    "Baklava",
    "Welsh rarebit",
    "Tomato and plum salad",
    "Seoul sling",
    "Onion pakoda",
    "Masala dosha",
    "Sambar",
    "Parippu vada",
    "Biriyani",
    "Tomato rice",
  ];
  void submit(){
    final form = formKey.currentState;

    if (form.validate()) {
      setState(() {
        form.save();
        sum=0;
        /*
       M1=int.parse(meal1);
        M1=int.parse(meal1);
        M1=int.parse(meal1);
       if(M1<1000)
          {
            if(M2>50 && M2<1000)
              {
                if(M3>50 && M3<1000)
                  {
                    m1=M1;
                    m2=M2;
                    m3=M3;
                  }
              }
          }
        */
        if (meal1 == meals[0])
          m1 = 295;
        if (meal1 == meals[1])
          m1 = 226;
        if (meal1 == meals[2])
          m1 = 246;
        if (meal1 == meals[3])
          m1 = 266;
        if (meal1 == meals[4])
          m1 = 131;
        if (meal1 == meals[5])
          m1 = 258;
        if (meal1 == meals[6])
          m1 = 312;
        if (meal1 == meals[7])
          m1 = 100;
        if (meal1 == meals[8])
          m1 = 564;
        if (meal1 == meals[9])
          m1 = 450;
        if (meal1 == meals[10])
          m1 = 199;
        if (meal1 == meals[11])
          m1 = 217;
        if (meal1 == meals[12])
          m1 = 386;
        if (meal1 == meals[13])
          m1 = 635;
        if (meal1 == meals[14])
          m1 = 278;
        if (meal1 == meals[15])
          m1 = 262;
        if (meal1 == meals[16])
          m1 = 231;
        if (meal1 == meals[17])
          m1 = 236;
        if (meal1 == meals[18])
          m1 =290;
        if (meal1 == meals[19])
          m1 = 400;
        if (meal1 == meals[20])
          m1 = 306;
        if (meal1 == meals[21])
          m1 =  291;
        if (meal1 == meals[22])
          m1 = 100;
        if (meal1 == meals[23])
          m1 = 229;
        if (meal1 == meals[24])
          m1 = 315;
        if (meal1 == meals[25])
          m1 = 539;
        if (meal1 == meals[26])
          m1 = 139;
        if (meal1 == meals[27])
          m1 = 91;
        if (meal1 == meals[28])
          m1 = 290;
        if (meal1 == meals[29])
          m1 = 266;



        if (meal2 == meals[0])
          m2 = 295 ;
        if (meal2 == meals[1])
          m2 = 226 ;
        if (meal2 == meals[2])
          m2 = 246 ;
        if (meal2 == meals[3])
          m2 = 266 ;
        if (meal2 == meals[4])
          m2 = 131;
        if (meal2 == meals[5])
          m2 = 258;
        if (meal2 == meals[6])
          m2 = 312;
        if (meal2 == meals[7])
          m2 = 100;
        if (meal2 == meals[8])
          m2 = 564;
        if (meal2 == meals[9])
          m2 = 450;
        if (meal2 == meals[10])
          m2 = 199;
        if (meal2 == meals[11])
          m2 = 217;
        if (meal2 == meals[12])
          m2 = 386;
        if (meal2 == meals[13])
          m2 = 635;
        if (meal2 == meals[14])
          m2 = 278;
        if (meal2 == meals[15])
          m2 = 262;
        if (meal2 == meals[16])
          m2 = 231;
        if (meal2 == meals[17])
          m2 = 236;
        if (meal2 == meals[18])
          m2 =290;
        if (meal2 == meals[19])
          m2 = 400;
        if (meal2 == meals[20])
          m2 = 306;
        if (meal2 == meals[21])
          m2 =  291;
        if (meal2 == meals[22])
          m2 = 100;
        if (meal2 == meals[23])
          m2 = 229;
        if (meal2 == meals[24])
          m2 = 315;
        if (meal2 == meals[25])
          m2 = 539;
        if (meal2 == meals[26])
          m2 = 139;
        if (meal2 == meals[27])
          m2 = 91;
        if (meal2 == meals[28])
          m2 = 290;
        if (meal2 == meals[29])
          m2 = 266;


        if (meal3 == meals[0])
          m3 = 295;
        if (meal3 == meals[1])
          m3 = 226;
        if (meal3 == meals[2])
          m3 = 246;
        if (meal3 == meals[3])
          m3 = 266;
        if (meal3 == meals[4])
          m3 = 131;
        if (meal3 == meals[5])
          m3 = 258;
        if (meal3 == meals[6])
          m3 = 312;
        if (meal3 == meals[7])
          m3 = 100;
        if (meal3 == meals[8])
          m3 = 564;
        if (meal3 == meals[9])
          m3 = 450;
        if (meal3 == meals[10])
          m3 = 199;
        if (meal3 == meals[11])
          m3 = 217;
        if (meal3 == meals[12])
          m3 = 386;
        if (meal3 == meals[13])
          m3 = 635;
        if (meal3 == meals[14])
          m3 = 278;
        if (meal3 == meals[15])
          m3 = 262;
        if (meal3 == meals[16])
          m3 = 231;
        if (meal3 == meals[17])
          m3 = 236;
        if (meal3 == meals[18])
          m3 =290;
        if (meal3 == meals[19])
          m3 = 400;
        if (meal3 == meals[20])
          m3 = 306;
        if (meal3 == meals[21])
          m3 =  291;
        if (meal3 == meals[22])
          m3 = 100;
        if (meal3 == meals[23])
          m3 = 229;
        if (meal3 == meals[24])
          m3 = 315;
        if (meal3 == meals[25])
          m3 = 539;
        if (meal3 == meals[26])
          m3 = 139;
        if (meal3 == meals[27])
          m3 = 91;
        if (meal3 == meals[28])
          m3 = 290;
        if (meal3 == meals[29])
          m3 = 266;


        sum = m1+ m2+ m3;

        if(sum<100)
        {
          msg='LOW calorie Consumption!!!!';
        }
        else if (sum>1200)
        {
          msg='Daily Calorie limit EXCEEDED!!!!';
        }
        else
        {
          msg = 'You are Fine...';
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
