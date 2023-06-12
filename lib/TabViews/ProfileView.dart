import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage("assets/profile.webp"),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: const <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Name:", style: TextStyle(fontSize: 20)),
                      SizedBox(width: 10),
                      Text("Jack", style: TextStyle(fontSize: 20))
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Surname:", style: TextStyle(fontSize: 20)),
                      SizedBox(width: 10),
                      Text("Sparrow", style: TextStyle(fontSize: 20))
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Age:", style: TextStyle(fontSize: 20)),
                      SizedBox(width: 10),
                      Text("25", style: TextStyle(fontSize: 20))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
