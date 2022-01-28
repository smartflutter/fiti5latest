import 'package:fiti5/utils/Kcolor.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Kcolor.bgcolor,
      body: SafeArea(
        child: Stack(
          children: [
            Card(
              color: Kcolor.bgcolor,
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
              elevation: 8,
              margin: EdgeInsets.only(
                  left: 40.0, right: 40.0, top: 40.0, bottom: 40.0),

              child: Stack(
                children: [
                  ClipPath(
                    clipper: MyCustomClipper(),
                    child: Image.asset(
                      'assets/image/signin.png',
                    ),
                  ),
                  Wrap(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 500,
                        child: Column(
                          children: [
                            Center(
                              child: Image.asset(
                                'assets/logo/logo.png',
                                scale: 3,
                              ),
                            ),
                            Center(
                              child: Text(
                                'SIGN IN',
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
                                          borderRadius:
                                              BorderRadius.circular(10.0),
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
                                        fillColor:
                                            Color(0xff0E8EAE).withOpacity(0.4),
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
                                          borderRadius:
                                              BorderRadius.circular(10.0),
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
                                        fillColor:
                                            Color(0xff0E8EAE).withOpacity(0.4),
                                        contentPadding: EdgeInsets.all(10),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 80.0,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    alignment: Alignment.topRight,
                                    child: SizedBox(
                                      width: 150,
                                      height: 45,
                                      child: ElevatedButton(
                                        child: Text(
                                          "PROCEED",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        onPressed: () => Navigator.of(context)
                                            .push(MaterialPageRoute(
                                                builder: (context) => Login())),
                                        style: ElevatedButton.styleFrom(
                                          primary: Kcolor.white,
                                          onPrimary: Colors.black,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(40.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Create an Account',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Kcolor.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // child: Container(
              //   clipBehavior: Clip.antiAlias,
              //   // width: MediaQuery.of(context).size.width,
              //   // width: double.infinity,
              //   // height: 350,

              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //       image: AssetImage("assets/image/signinfull.png"),
              //       fit: BoxFit.cover,
              //     ),
              //   ),

              //   child: Column(
              //     children: [
              //       SizedBox(
              //         height: 5.0,
              //       ),
              //       Center(
              //         child: Image.asset(
              //           'assets/logo/logo.png',
              //           scale: 3,
              //         ),
              //       ),
              //       Center(
              //         child: Text(
              //           'Signin',
              //           style: TextStyle(
              //             fontSize: 35,
              //             fontWeight: FontWeight.bold,
              //           ),
              //         ),
              //       ),
              //       Container(
              //         margin: EdgeInsets.all(40.0),
              //         child: Column(
              //           children: [
              //             Center(
              //               child: TextField(
              //                 autocorrect: false,
              //                 autofocus: false,
              //                 style: TextStyle(
              //                   fontSize: 18,
              //                 ),
              //                 decoration: InputDecoration(
              //                   border: OutlineInputBorder(
              //                     borderRadius:
              //                         BorderRadius.circular(10.0),
              //                   ),
              //                   hintText: 'Username',
              //                   hintStyle: TextStyle(
              //                       color: Kcolor.white,
              //                       fontWeight: FontWeight.bold),
              //                   prefixIcon: Icon(
              //                     Icons.person,
              //                     size: 28.0,
              //                   ),
              //                   filled: true,
              //                   fillColor:
              //                       Color(0xff0E8EAE).withOpacity(0.4),
              //                   contentPadding: EdgeInsets.all(10),
              //                 ),
              //               ),
              //             ),
              //             SizedBox(
              //               height: 1.0,
              //             ),
              //             Center(
              //               child: TextField(
              //                 autocorrect: false,
              //                 autofocus: false,
              //                 style: TextStyle(
              //                   fontSize: 18,
              //                 ),
              //                 decoration: InputDecoration(
              //                   border: OutlineInputBorder(
              //                     borderRadius:
              //                         BorderRadius.circular(10.0),
              //                   ),
              //                   hintText: 'Password',
              //                   hintStyle: TextStyle(
              //                       color: Kcolor.white,
              //                       fontWeight: FontWeight.bold),
              //                   prefixIcon: Icon(
              //                     Icons.lock_outline_sharp,
              //                     size: 28.0,
              //                   ),
              //                   filled: true,
              //                   fillColor:
              //                       Color(0xff0E8EAE).withOpacity(0.4),
              //                   contentPadding: EdgeInsets.all(10),
              //                 ),
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ),

            SizedBox(
              height: 30.0,
            ),

            // Positioned(
            //     bottom: 0,
            //     child: Container(
            //       width: MediaQuery.of(context).size.width,
            //       color: Kcolor.bgcolorlight,
            //       child: Column(
            //         children: [
            //           SizedBox(
            //             height: 20.0,
            //           ),
            //           Center(
            //             child: Text(
            //               'Terms & Condition',
            //               style: TextStyle(color: Colors.white, fontSize: 25),
            //             ),
            //           ),
            //           SizedBox(
            //             height: 10.0,
            //           ),
            //           Center(
            //             child: Text(
            //               'Copyright @  FITI5 2022',
            //               style: TextStyle(color: Colors.black, fontSize: 25),
            //             ),
            //           ),
            //           SizedBox(
            //             height: 20.0,
            //           ),
            //         ],
            //       ),
            //     )),
          ],
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height * 0.9);
    path.lineTo(size.width * 0.18, size.height);
    path.lineTo(size.width * 0.7, size.height);
    path.lineTo(size.width, size.height * 0.7);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
