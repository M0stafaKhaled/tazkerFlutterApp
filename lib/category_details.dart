import 'package:flutter/material.dart';

class CategoryDetails extends StatefulWidget {
  final String title;
  CategoryDetails({this.title});
  @override
  _CategoryDetailsState createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  List categoriesData = [
    {"name": "title 1", "leading": "leading 1"},
    {"name": "title 2", "leading": "leading 2"},
    {"name": "title 3", "leading": "leading 3"},
    {"name": "title 4", "leading": "leading 4"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: BackButton(
            color: Colors.white,
          ),
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: ListView.builder(
            padding: EdgeInsets.only(top: 10),
            itemCount: categoriesData.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          spreadRadius: 1,
                          blurRadius: 6),
                    ],
                  ),
                  child: ListTile(
                    title: Text(categoriesData[index]['name']),
                    leading: Text(categoriesData[index]['name']),
                    trailing: Text(categoriesData[index]['leading']),
                  ),
                ),
              );
            }));
  }
}
