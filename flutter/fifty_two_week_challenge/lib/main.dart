import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: "Weeks", icon: Icon(Icons.calendar_today)),
                Tab(text: "Stats", icon: Icon(Icons.pie_chart),),
                Tab(text: "Goals", icon: Icon(Icons.star_border),)
              ],
            ),
            title: Text("52 week challenge"),
          ),
          body: TabBarView(
            children: [
              Text("Weeks"),
              Text("Stats"),
              Text("Goals")
            ],
          ),
        ),
      ),
    );
  }
}
