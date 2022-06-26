import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import "package:fluttertoast/fluttertoast.dart";

void main() {
  runApp(const MaterialApp(
    home: assignmet(),
  ));
}
class assignmet extends StatelessWidget {
  const assignmet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Home_1();
  }
}


class Home_1 extends StatefulWidget {
  const Home_1({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return Home_1state();
  }
}
// ignore: camel_case_types
class Home_1state extends State<Home_1> {

  void shw(){
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 2,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
    if (kDebugMode) {
      print("hi...");
    }
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return   Scaffold(
      appBar: AppBar(
        title: const Text("app bar"),
      ),
      body: Stack(children: <Widget>[
        Container(
          width: width ,
          height: height,
          color: Colors.lightBlueAccent,
        ),
        Align(
          alignment: AlignmentDirectional.center,
          child: Container(
            width: width * 0.95,
            height: height * 0.84,
            color: Colors.greenAccent,
          ),
        ),
        Align(
          alignment: AlignmentDirectional.center,
          child: Container(
            width: width * 0.90,
            height: height * 0.78,
            color: Colors.brown.shade900,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/4.jpg',
                    height: 78,
                    width: width * 0.80,
                    colorBlendMode: BlendMode.difference,
                  ),
                  const Text(
                    "Thank you for waiting\nyour booking request has been reserved\nfor --:-- to --:-- on---",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  Image.asset(
                    'assets/images/3.jpg',
                    height: height * 0.47,
                    width: 100,
                  ),
                  const Text(
                    "Add a friend,create team,\nJoin tournaments and win prizes",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.yellowAccent),
                  ),
                  SizedBox(
                    height: height * 0.10,
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        OutlinedButton(
                          onPressed: shw,
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.grey,
                            primary: Colors.white,
                            padding: const EdgeInsets.only(left: 7),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Text(
                              "Create team\n    Now!",
                            ),
                          ),
                        ),
                      ]
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),

    );
  }
}