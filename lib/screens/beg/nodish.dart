import 'package:flutter/material.dart';

class dishnotfound extends StatefulWidget {
  @override
  _dishnotfoundState createState() => _dishnotfoundState();
}

class _dishnotfoundState extends State<dishnotfound> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Container(
          color: Colors.white70,
          padding: EdgeInsets.fromLTRB(0.0, 200.0, 0.0, 0.0),
          child: Image.network("https://cdn.dribbble.com/users/189859/screenshots/3639645/abc.gif",
          fit:BoxFit.cover,),

        ),
      ),
    );
  }
}
