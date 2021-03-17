import 'package:dashboard_flutter_01/splashScreen.dart';
import 'package:dashboard_flutter_01/werd.dart';
import 'package:flutter/material.dart';

import 'griddashboard.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Werd(),
      title: "عباد الرحمن",
      theme: ThemeData(primaryColor: Color(0xff453658)),
    ));

class Home extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

//(0xff392850
class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff392850),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 110,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "عباد الرحمن",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                          color: Color(0xffa29aac),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                IconButton(
                  alignment: Alignment.topCenter,
                  icon: Icon(Icons.notifications),
                  color: Colors.white,
                  onPressed: () {
                    print("mostafa");
                  },
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          GridDashboard()
        ],
      ),
    );
  }
}
