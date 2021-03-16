import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    //generateDeviceToken();
    startTime();
  }
  startTime() async {
    print("start time");
    return new Timer(Duration(seconds: 3), checkInternetConnection);
  }
  void checkInternetConnection() {
    // Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    Navigator.pushAndRemoveUntil(
        context, MaterialPageRoute(builder: (context) => Home()), (e) => false);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      // backgroundColor: Color(0xffA61B4D),
      body: WillPopScope(
          //Wrap out body with a `WillPopScope` widget that handles when a user is cosing current route
          onWillPop: () async {
            Future.value(
                false); //return a `Future` with false value so this route cant be popped or closed.
          },
          child: Container(
            /// Set gradient black in image splash screen (Click to open code)
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "اللَّهُمَّ رَبَّ النَّاسِ أَذْهِبْ الْبَاسَ اشْفِهِ وَأَنْتَ الشَّافِي لَا شِفَاءَ إِلَّا شِفَاؤُكَ شِفَاءً لَا يُغَادِرُ سَقَمًا",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
