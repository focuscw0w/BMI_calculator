import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List adultStats = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Text(
              "BMI Introduction",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo[800],
                  letterSpacing: 1),
            ),
            SizedBox(height: 10),
            Text(
              "The Body Mass Index (BMI) Calculator can be used to calculate BMI value and corresponding weight status while taking age into consideration.",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Table(
              children: [
                buildRow(["Classification", "BMI range - kg/m2"],
                    isHeader: true),
                buildRow(["Severe Thinness", "< 16"]),
                buildRow(["Moderate Thinness", "16 - 17"]),
                buildRow(["Mild Thinness", "17 - 18.5"]),
                buildRow(["Normal", "18.5 - 25"]),
                buildRow(["Overweight", "25 - 30"]),
                buildRow(["Obese Class I", "30 - 35"]),
                buildRow(["Obese Class II", "35 - 40"]),
                buildRow(["Obese Class III", "> 40"])
              ],
            )
          ],
        ),
      ),
    );
  }

  TableRow buildRow(List cells, {bool isHeader = false}) => TableRow(
          children: cells.map((cell) {
        final style = TextStyle(
          fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
          fontSize: isHeader ? 18 : 16,
        );

        return Padding(
          padding: const EdgeInsets.all(12),
          child: Center(child: Text(cell, style: style)),
        );
      }).toList());
}
