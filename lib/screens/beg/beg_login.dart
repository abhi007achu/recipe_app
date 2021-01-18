import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipeapp/data/database_helper.dart';
import 'package:recipeapp/models/user.dart';
import 'package:recipeapp/screens/beg/beg_homscreen.dart';
import 'package:recipeapp/screens/beg/beg_login.dart';

import 'package:google_fonts/google_fonts.dart';
import 'beg_home.dart';
import 'beg_register.dart';

class beg_Login extends StatefulWidget {
  @override
  _beg_LoginState createState() => new _beg_LoginState();
}

class _beg_LoginState extends State<beg_Login> {
  BuildContext _ctx;
  bool _isLoading = false;
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  String _email, _password;



  void _register() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>beg_reg()),);
  }


  void _submit() {
    final form = formKey.currentState;

    if (form.validate()) {
      setState(() {
        _isLoading = true;
        var db = new DatabaseHelper();
        var user = new User(null,_email,_password,null,null);
        var userc= db.selectUser(user);
        if(userc != null) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => begHomeScreen()),);
        }
        else{
          // TODO: implement onLoginSuccess
          _showSnackBar("Login not Success..");
        }
        form.save();
      });
    }
  }

  void _showSnackBar(String text) {
    scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(text),
    ));
  }

  @override
  Widget build(BuildContext context) {
    _ctx = context;
    var loginBtn = Padding(
      padding: const EdgeInsets.all(8.0),
      child: ButtonTheme(
        padding: EdgeInsets.only(),
        buttonColor: Colors.greenAccent,
        height: 50,
        minWidth:350,
        child: RaisedButton(
          child: Text(
            'Login',
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

    var registerBtn = Padding(
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
            _register();

          },
        ),
      ),
    );
    var docBtn = Padding(
      padding: const EdgeInsets.all(8.0),
      child: ButtonTheme(
        padding: EdgeInsets.only(),
        buttonColor: Colors.white70,
        height: 50,
        minWidth: 350,
        child: RaisedButton(
          child: Text(
            'Login as DOCTOR',
            style: TextStyle(
              color: Colors.teal[800],
              fontSize: 20,
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
                  child: Text('Hello',
                    style: GoogleFonts.aladin(
                        textStyle: TextStyle(
                            fontSize: 80.0,
                            fontWeight: FontWeight.bold)
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(16.0,170.0,0.0,0.0),
                  child: Text('There',
                    style: GoogleFonts.aladin(
                        textStyle: TextStyle(
                            fontSize: 80.0,
                            fontWeight: FontWeight.bold)
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(170.0,170.0,0.0,0.0),
                  child: Text('.',
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
                padding: const EdgeInsets.all(20.0),
                child: new TextFormField(
                  onSaved: (val) => _email = val,
                  decoration: new InputDecoration(labelText: "Username",
                    labelStyle: GoogleFonts.aladin(
                        textStyle: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold)
                    ),
                  ),
                  validator: (String _email){
                    if (_email.length <4) return 'Invalid Username';
                    else return null;
                  },
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(20.0),
                child: new TextFormField(
                  onSaved: (val) => _password = val,
                  decoration: new InputDecoration(labelText: "Password",
                    labelStyle: GoogleFonts.aladin(
                        textStyle: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold)
                    ),
                  ),
                  obscureText: true,
                  validator: (String _password) {
                    if (_password.length < 8) return 'Invalid Password';
                    else return null;
                  },
                ),
              )
            ],
          ),
        ),
        new Padding(
            padding: const EdgeInsets.all(10.0),
            child: loginBtn),
        new Padding(
          padding: const EdgeInsets.all(10.0),
          child: registerBtn,),
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
      ),
    );
  }

  @override
  void onLoginError(String error) {
    // TODO: implement onLoginError
    _showSnackBar(error);
    setState(() {
      _isLoading = false;
    });
  }
  /**
      @override
      void onLoginSuccess(User user) async {
      // TODO: implement onLoginSuccess
      if(user.username == ""){
      _showSnackBar("Login not successful");
      }else{
      _showSnackBar(user.toString());
      }
      setState(() {
      _isLoading = false;
      });
      if(user.flaglogged == "logged"){
      print("Logged");
      Navigator.push(context, MaterialPageRoute(builder: (context)=>begHomeScreen()),);
      }else{
      print("Not Logged");
      }

      }**/
  @override
  void onLoginSuccess(User user) async {
    if(user != null){
      Navigator.of(context).pushNamed("/home");
    }else{
      // TODO: implement onLoginSuccess
      _showSnackBar("Login not Success..");
      setState(() {
        _isLoading = false;
      });
    }

  }
}
