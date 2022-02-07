// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, sized_box_for_whitespace

import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
import 'animation/animations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '404 Error',
      home: ErrorPage(),
    );
  }
}

class ErrorPage extends StatefulWidget {
  ErrorPage({Key? key}) : super(key: key);

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
/////////////////////////////////////
/// @CodeWithFlexz on Instagram
///
/// AmirBayat0 on Github
/// Programming with Flexz on Youtube
/////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: currentWidth,
          height: currentHeight,
          color: Color(0xff764fee),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TopAnime(
                1,
                25,
                curve: Curves.fastOutSlowIn,
                child: Container(
                  width: currentWidth,
                  height: currentHeight / 1.8,
                  child: Lottie.asset("assets/62541-404-error-robot.json",
                      animate: false),
                ),
              ),
              TopAnime(
                2,
                5,
                curve: Curves.fastOutSlowIn,
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        "PAGE NOT FOUND",
                        style: TextStyle(
                          fontSize: 45,
                          fontFamily: 'FiraSans',
                          color: Color(0xfffdfdfd),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "The page you are looking for was moved, removed renamed or might never existed.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Color(0xfffdfdfd),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // SizedBox(height: 40,),
              TopAnime(
                2,
                30,
                curve: Curves.fastOutSlowIn,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    children: [
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        minWidth: currentWidth / 3,
                        height: currentHeight / 16.5,
                        elevation: 3,
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      super.widget));
                        },
                        child: Text(
                          "GO HOME",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        color: Color(0xff00E6FE),
                      ),
                      Expanded(child: Container()),
                      Container(
                        width: currentWidth / 3,
                        height: currentHeight / 16.5,
                        child: OutlineButton(
                          splashColor: Colors.white.withOpacity(0.4),
                          focusColor: Colors.white,
                          borderSide:
                              BorderSide(color: Color(0xff00E6FE), width: 2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          onPressed: () {
                            showDialog(
                              context: context,
                              barrierDismissible:
                                  false, // user must tap button!
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(
                                    'Contact Forms',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 22),
                                  ),
                                  content: SingleChildScrollView(
                                    child: ListBody(
                                      children: [
                                        Text(
                                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry..."),
                                      ],
                                    ),
                                  ),
                                  actions: [
                                    TextButton(
                                      child: Text(
                                        'Cancel',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                    MaterialButton(
                                      color: Colors.blue,
                                      child: Text(
                                        'CONTACT',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        super.widget));
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: Text(
                            "CONTACT US",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          color: Color(0xff028aa8),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
