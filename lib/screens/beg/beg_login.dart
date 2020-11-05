import 'package:flutter/material.dart';
import 'package:recipeapp/screens/beg/beg_home.dart';
import 'beg_passwordset.dart';
import 'beg_register.dart';
class beg_Login extends StatefulWidget {
  @override
  _beg_LoginState createState() => _beg_LoginState();
}

class _beg_LoginState extends State<beg_Login> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                child: Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(15.0,110.0,0.0,0.0),
                        child: Text(
                            'Hello',
                            style: TextStyle(
                                fontSize: 80.0, fontWeight: FontWeight.bold)
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(16.0,175.0,0.0,0.0),
                        child: Text(
                            'There',
                            style: TextStyle(
                                fontSize: 80.0, fontWeight: FontWeight.bold)
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(220.0,175.0,0.0,0.0),
                        child: Text(
                            '.',
                            style: TextStyle(
                                fontSize: 80.0, fontWeight: FontWeight.bold, color: Colors.greenAccent)
                        ),
                      )
                    ]
                )
            ),
            Container(
              padding: EdgeInsets.only(top: 35.0,left: 20.0,right: 20.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'EMAIL',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.black54
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.greenAccent)
                        )
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'PASSWORD',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.black54
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.greenAccent)
                        )
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 5.0,),
                  Container(
                    alignment: Alignment(1.0, 0.0),
                    padding: EdgeInsets.only(top: 15.0,left: 20.0),
                    child: InkWell(
                      onTap:() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>beg_pass())
                        );
                      },
                      child: Text('Forgot Password',
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            decoration: TextDecoration.underline
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40.0),
                  Container(
                    height: 50.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.greenAccent,
                      color: Colors.green,
                      elevation: 7.0,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>begHomeScreen()),);
                        },
                        child: Center(
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat'
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'New to Taste Diary ?',
                  style: TextStyle(
                      fontFamily: 'Montserrat'
                  ),
                ),
                SizedBox(width: 5.0),
                InkWell(
                  onTap:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>beg_reg()),);
                  },
                  child: Text('Register',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        decoration: TextDecoration.underline
                    ),
                  ),
                )
              ],
            )
          ],
        )
    );
  }
}
