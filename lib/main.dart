import 'package:flutter/material.dart';
import 'screens/beg/beg_login.dart';
import 'screens/beg/beg_register.dart';
import 'screens/mainscreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splashscreen/splashscreen.dart';
import 'screens/mainscreen.dart';
import 'screens/mainscreen.dart';
import 'screens/pro/loginpage.dart';
import 'screens/pro/register.dart';


void main() {
  runApp(
      MaterialApp(
        home: MyApp(),
        debugShowCheckedModeBanner: false,
      )
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      routeName: "/",
      backgroundColor: Colors.white,

      image: Image.network('http://bestanimations.com/Food/food-animated-gif-6.gif'),
      title: Text('\n\n\nTasteDiary',
        style: GoogleFonts.lobster(
            textStyle: TextStyle(
                fontSize: 38.0,
                fontWeight: FontWeight.bold
            )
        ),
      ),

      loaderColor: Colors.white,
      photoSize: 150.0,
      navigateAfterSeconds: MainScreen(),
    );
  }
}





