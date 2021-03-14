import 'package:dashboard_flutter_01/category_details.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
      title: "اذكار", subtitle: "March, Wednesday", img: "assets/calendar.png");

  Items item2 = new Items(
    title: "ورد قراني",
    subtitle: "Bocali, Apple",
    img: "assets/food.png",
  );
  Items item3 = new Items(
    title: "thing",
    subtitle: "thing",
    img: "assets/map.png",
  );
  // Items item4 = new Items(
  //   title: "Activity",
  //   subtitle: "Rose favirited your Post",
  //   event: "",
  //   img: "assets/festival.png",
  // );
  // Items item5 = new Items(
  //   title: "To do",
  //   subtitle: "Homework, Design",
  //   event: "4 Items",
  //   img: "assets/todo.png",
  // );
  // Items item6 = new Items(
  //   title: "Settings",
  //   subtitle: "",
  //   event: "2 Items",
  //   img: "assets/setting.png",
  // );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3];
    var color = 0xff453658;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16, top: 10),
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: myList.map((data) {
            return GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CategoryDetails(
                            title: data.title,
                          ))),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(color),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      data.img,
                      width: 42,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      data.title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String img;
  Items({this.title, this.subtitle, this.img});
}
