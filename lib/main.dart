import 'dart:async';

import 'package:fiti5/screen/auth/login.dart';
import 'package:fiti5/screen/auth/register.dart';
import 'package:fiti5/utils/Kcolor.dart';
import 'package:fiti5/utils/Preference.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.blue,
      ),
      home: Splashscreen(),
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => Login(),
        '/register': (BuildContext context) => Register(),
      },
    );
  }
}

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Home())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kcolor.bgcolorlight,
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  child: Image.asset('assets/logo/logo.png',
                      scale: 1.9,
                      color: Kcolor.bgcolorlight.withOpacity(0.1),
                      colorBlendMode: BlendMode.srcOver)),
              SizedBox(
                height: 20,
              ),
              Text("FITI5",
                  style: TextStyle(
                    fontSize: 40,
                    color: Kcolor.white,
                    fontFamily: 'Montserrat',
                    fontStyle: FontStyle.italic,
                  )),
              SizedBox(
                height: 10,
              ),
              Image.asset(
                'assets/splash/splash.png',
                color: Kcolor.bgcolorlight.withOpacity(0.8),
                colorBlendMode: BlendMode.srcOver,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isFirstTimeUser = true;

  @override
  void initstate() {
    isFirstTime();

    super.initState();
  }

  isFirstTime() async {
    isFirstTimeUser =
        Preference.shared.getBool(Preference.IS_USER_FIRSTTIME) ?? true;
    print(isFirstTimeUser.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: (isFirstTimeUser) ? Register() : Login(),
    );
  }
}
