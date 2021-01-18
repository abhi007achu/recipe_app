import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipeapp/data/database_helper.dart';
import 'package:recipeapp/models/user1.dart';
import 'package:recipeapp/screens/pro/pro_loginpresenter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipeapp/screens/pro/pro_home.dart';
import 'package:recipeapp/screens/pro/register.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => new _LoginState();
}

class _LoginState extends State<Login>  implements LoginPageContract {
  BuildContext _ctx;
  bool _isLoading = false;
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  String _email, _password;
  LoginPagePresenter _presenter;

  _LoginState() {
    _presenter = new LoginPagePresenter(this);
  }



  void _register() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()),);
  }


  void _submit() {
    final form = formKey.currentState;

    if (form.validate()) {
      setState(() {
        _isLoading = true;
        form.save();
        _presenter.doLogin(_email, _password);
      });
    }
  }

  void _showSnackBar(String text) {
    scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text("Invalid Username or Password"),
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
    _showSnackBar("Login not successful");
    setState(() {
      _isLoading = false;
    });
  }

@override
    void onLoginSuccess(User1 user) async {
    // TODO: implement onLoginSuccess
    if(user.pusername == ""){
    _showSnackBar("Login not successful");
    }else{
    _showSnackBar(user.toString());
    }
    setState(() {
    _isLoading = false;
    });
    if(user.flaglogged == "logged"){
    print("Logged");
    Navigator.push(context, MaterialPageRoute(builder: (context)=>proHomeScreen()),);
    }else{
    print("Not Logged");
    }
    }
}
