import 'package:fiti5/screen/auth/login.dart';
import 'package:fiti5/utils/Kcolor.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Kcolor.bgcolorlight,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(45),
            topRight: Radius.circular(45),
          ),
        ),
        margin: EdgeInsets.only(top: 60.0),
        child: SafeArea(
          child: Column(
            children: [
              Flexible(
                flex: 9,
                child: Container(
                  color: Kcolor.bgcolorlight,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Image.asset('assets/logo/logo.png'),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Fast Registration',
                        style: TextStyle(color: Kcolor.white, fontSize: 40),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'No more long and exhausted registration simple and reliable ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Kcolor.white,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          ' This is our motto!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Kcolor.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        width: 200,
                        height: 60,
                        child: ElevatedButton(
                          child: Text(
                            "NEXT",
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Login())),
                          style: ElevatedButton.styleFrom(
                            primary: Kcolor.white,
                            onPrimary: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
