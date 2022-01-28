import 'package:fiti5/utils/Kcolor.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 8,
              margin: EdgeInsets.all(40.0),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/image/signinfull.png"),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5.0,
                    ),
                    Center(
                      child: Image.asset(
                        'assets/logo/logo.png',
                        scale: 3,
                      ),
                    ),
                    Center(
                      child: Text(
                        'Signin',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(40.0),
                      child: Column(
                        children: [
                          Center(
                            child: TextField(
                              autocorrect: false,
                              autofocus: false,
                              style: TextStyle(
                                fontSize: 18,
                              ),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                hintText: 'Username',
                                hintStyle: TextStyle(
                                    color: Kcolor.white,
                                    fontWeight: FontWeight.bold),
                                prefixIcon: Icon(
                                  Icons.person,
                                  size: 28.0,
                                ),
                                filled: true,
                                fillColor: Color(0xff0E8EAE).withOpacity(0.4),
                                contentPadding: EdgeInsets.all(10),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 1.0,
                          ),
                          Center(
                            child: TextField(
                              autocorrect: false,
                              autofocus: false,
                              style: TextStyle(
                                fontSize: 18,
                              ),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                    color: Kcolor.white,
                                    fontWeight: FontWeight.bold),
                                prefixIcon: Icon(
                                  Icons.lock_outline_sharp,
                                  size: 28.0,
                                ),
                                filled: true,
                                fillColor: Color(0xff0E8EAE).withOpacity(0.4),
                                contentPadding: EdgeInsets.all(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
