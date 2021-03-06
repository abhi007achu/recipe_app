import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class begdish extends StatefulWidget {
  final String image,name,cal,ing,time,rec1,rec2,rec3,rec4,rec5,rec6,rec7,rec8,rec9,rec10,rec11,rec12,rec13,dec;
  const begdish (this.image,this.name,this.cal,this.ing,this.time,this.rec1,this.rec2,this.rec3,this.rec4,this.rec5,this.rec6,this.rec7,this.rec8,this.rec9,this.rec10,this.rec11,this.rec12,this.rec13,this.dec);
  @override
  _begdishState createState() => _begdishState();
}

class _begdishState extends State<begdish> {
  Color iconcolor= Colors.grey;
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            //first show img in background
            Hero(
              child: Container(
                height: size.height*0.45,
                child: Image.asset(widget.image, fit: BoxFit.cover,),
              ),
              tag:'dish1.jpg',
            ),
            DraggableScrollableSheet(
                maxChildSize: 1,
                initialChildSize: 0.6,
                minChildSize: 0.6,
                builder: (context, controller)
                {
                  return SingleChildScrollView(
                    controller: controller,
                    child: Container(
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)
                          )
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                widget.name,
                                style: GoogleFonts.poppins(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Spacer(),
                              IconButton(

                                icon: Icon(Icons.favorite,color: iconcolor),
                                iconSize: 30,
                                onPressed: () {
                                  setState(() {
                                    if(iconcolor==Colors.grey)
                                    {
                                      iconcolor= Colors.redAccent;
                                    }
                                    else
                                    {
                                      iconcolor=Colors.grey;
                                    }

                                  });
                                },
                              )
                            ],
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          //container for food information
                          Container(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border:
                                        Border.all(color: Colors.grey[400])
                                    ),
                                    padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          "Calories",
                                          style:GoogleFonts.poppins(
                                              fontSize: 18,
                                              color:Colors.black
                                          ),
                                        ),
                                        Text(
                                          widget.cal,
                                          style:GoogleFonts.poppins(
                                              fontSize: 17,
                                              color:Colors.black45,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox( width: 10,),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border:
                                        Border.all(color: Colors.grey[400])
                                    ),
                                    padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          "Ingredients",
                                          style:GoogleFonts.poppins(
                                              fontSize: 18,
                                              color:Colors.black
                                          ),
                                        ),
                                        Text(
                                          widget.ing,
                                          style:GoogleFonts.poppins(
                                              fontSize: 17,
                                              color:Colors.black45,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox( width: 10,),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border:
                                        Border.all(color: Colors.grey[400])
                                    ),
                                    padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          "Time",
                                          style:GoogleFonts.poppins(
                                              fontSize: 18,
                                              color:Colors.black
                                          ),
                                        ),
                                        Text(
                                          widget.time,
                                          style:GoogleFonts.poppins(
                                              fontSize:17 ,
                                              color:Colors.black45,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            "RECIPE",
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            widget.rec1,
                            style:GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            widget.rec2,
                            style:GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            widget.rec3,
                            style:GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            widget.rec4,
                            style:GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            widget.rec5,
                            style:GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            widget.rec6,
                            style:GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            widget.rec7,
                            style:GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            widget.rec8,
                            style:GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            widget.rec9,
                            style:GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            widget.rec10,
                            style:GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            widget.rec11,
                            style:GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            widget.rec12,
                            style:GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            widget.rec13,
                            style:GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            "COOKING METHOD",
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            widget.dec,
                            style: GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }
              // builder: (context, controller),
            )
            //container for more contents
          ],
        ),
      ),
    );
  }
}
