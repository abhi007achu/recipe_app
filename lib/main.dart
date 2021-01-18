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
      seconds: 10,
      routeName: "/",
     backgroundColor: Colors.lime[100],
      title: Text('\nTasteDiary\n',
        style: GoogleFonts.lobster(
            textStyle: TextStyle(
                fontSize: 38.0,
                fontWeight: FontWeight.bold
            )
        ),
      ),
      image: Image.asset('assets/pics/PngItem_778456.png',
      fit: BoxFit.cover,),


      loaderColor: Colors.redAccent[700],
      photoSize: 110.0,
      navigateAfterSeconds: MainScreen(),
    );
  }
}





