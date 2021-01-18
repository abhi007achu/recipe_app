
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipeapp/data/database_helper.dart';
import 'package:recipeapp/models/user.dart';
import 'package:recipeapp/models/user1.dart';
import 'package:recipeapp/screens/pro/loginpage.dart';
import 'package:recipeapp/screens/pro/pro_home.dart';

import 'package:recipeapp/screens/pro/pro_login2.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => new _RegisterState();
}

class _RegisterState  extends State<Register> {
  BuildContext _ctx;
  bool _isLoading = false;
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  String _name, _username, gender, email, _password;

  int  phno,age;


  @override
  Widget build(BuildContext context) {
    _ctx = context;
    var loginBtn =  Padding(
      padding: const EdgeInsets.all(8.0),
      child: ButtonTheme(
        padding: EdgeInsets.only(),
        buttonColor: Colors.greenAccent,
        height: 50,
        minWidth: 350,
        child: RaisedButton(
          child: Text(
            'Register',
            style: GoogleFonts.aladin(
                textStyle: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold)
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          onPressed: () {
            _submit();

          },
        ),
      ),
    );



    var loginForm = new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0,80.0,0.0,0.0),
                  child: Text('Sign',
                    style: GoogleFonts.aladin(
                        textStyle: TextStyle(
                            fontSize: 80.0,
                            fontWeight: FontWeight.bold)
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(140.0,80.0,0.0,0.0),
                  child: Text('Up',
                    style: GoogleFonts.aladin(
                        textStyle: TextStyle(
                            fontSize: 80.0,
                            fontWeight: FontWeight.bold)
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(220.0,80.0,0.0,0.0),
                  child: Text('!',
                    style: GoogleFonts.aladin(
                        textStyle: TextStyle(
                          fontSize: 80.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.greenAccent,
                        )
                    ),
                  ),
                )
              ]
          ),
        ),
        new Form(
          key: formKey,
          child: new Column(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  keyboardType: TextInputType.text,
                  onSaved: (val) => _name = val,
                  decoration: new InputDecoration(labelText: "Name",
                    labelStyle: GoogleFonts.aladin(
                        textStyle: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold)
                    ),),
                  validator: (String name) {
                    if (name.isEmpty)
                      return 'Enter your name';
                    else
                      return null;
                  },
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(

                  onSaved: (val) => _username = val,
                  decoration: new InputDecoration(labelText: "User Name",
                    labelStyle: GoogleFonts.aladin(
                        textStyle: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold)
                    ),),
                  validator: (String name) {
                    if (name.isEmpty)
                      return 'Enter your name';
                    else
                      return null;
                  },
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  onSaved: (val) => _password = val,
                  decoration: new InputDecoration(labelText: "Password",
                    labelStyle: GoogleFonts.aladin(
                        textStyle: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold)
                    ),),
                  /**
                      validator: (String _password) {
                      Pattern pattern= r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$';
                      RegExp regex=RegExp(pattern);
                      if (!regex.hasMatch(_password ))
                      return 'Password must contain number,uppercase and special characters';
                      else
                      return null;
                      },
                   **/
                  validator: (String _password) {
                    if (_password.length <8 )
                      return 'Password length should be 8';
                    else
                      return null;
                  },
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  keyboardType: TextInputType.number,
                  onSaved: (val) => phno = int.parse(val),
                  decoration: new InputDecoration(labelText: "phone Number",
                    labelStyle: GoogleFonts.aladin(
                        textStyle: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold)
                    ),),
                  validator: (String phno) {
                    if (phno.length != 10 )
                      return 'Invalid mobile number';
                    else
                      return null;
                  },
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (val) => email = val,
                  decoration: new InputDecoration(labelText:"Email",
                    labelStyle: GoogleFonts.aladin(
                        textStyle: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold)
                    ),),
                  /** validator: (String email) {
                      Pattern pattern= r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$';
                      RegExp regex=RegExp(pattern);
                      if (!regex.hasMatch(email))
                      return 'Invalid Email';
                      else
                      return null;
                      },**/
                  validator: (String email) {
                    if (email.isEmpty)
                      return 'Invalid Email';
                    else
                      return null;
                  },
                ),
              ),
            ],
          ),
        ),
        loginBtn,
        new Padding(padding: EdgeInsets.all(100.0))

      ],
    );

    return new Scaffold(
        resizeToAvoidBottomInset: false,
        key: scaffoldKey,
        body: SingleChildScrollView(
          child: new Container(
            child: new Center(
              child: loginForm,
            ),
          ),
        )
    );
  }

  void _showSnackBar(String text) {
    scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(text),
    ));
  }

  void _submit() {
    final form = formKey.currentState;

    if (form.validate()) {
      setState(() {
        _isLoading = true;
        form.save();
        var user1 = new User1(_name, _username, _password,phno,email);
        var db = new DatabaseHelper();
        db.saveUser1(user1);
        _isLoading = false;
        Navigator.push(context, MaterialPageRoute(builder: (context)=>pro_Login2(_username,_password)),);
        if (formKey.currentState.validate()) {}
      });
    }
  }
}
