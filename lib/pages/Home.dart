import 'package:flutter/material.dart';
import 'package:login_register/TabViews/HomeView.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo[800],
          title: Center(child: Text("BMI Calculator")),
          bottom: TabBar(
            tabs: const <Widget>[
              Tab(icon: Icon(Icons.house)),
              Tab(icon: Icon(Icons.monitor_heart)),
              Tab(icon: Icon(Icons.person)),
            ],
          )
        ),
        body: const TabBarView(
          children: [
            HomeView(),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
