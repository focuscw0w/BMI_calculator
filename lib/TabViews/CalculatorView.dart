import 'dart:math';
import 'package:flutter/material.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({Key? key}) : super(key: key);

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  final userHeight = TextEditingController();
  final userWeight = TextEditingController();
  num userBmi = 0;

  calculate() {
    setState(() {
      if (userHeight.text.isNotEmpty && userWeight.text.isNotEmpty) {
        num height = pow(double.parse(userHeight.text), 2);
        num weight = double.parse(userWeight.text);
        userBmi = weight / height;
        userBmi = (userBmi * 10000).round();
        clearInputs();
      }
    });
  }

  showResult() {
    if (userBmi != 0) {
      return Text(
        "Your BMI is $userBmi",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      );
    }
  }

  void clearInputs() {
    userHeight.clear();
    userWeight.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 15),
          Text(
            "Calculate your BMI",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.indigo[800],
                letterSpacing: 1),
          ),
          SizedBox(height: 20),
          SizedBox(
              width: 200,
              child: TextField(
                keyboardType: TextInputType.number,
                controller: userHeight,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'height (cm)',
                ),
              )),
          SizedBox(height: 20),
          SizedBox(
              width: 200,
              child: TextField(
                keyboardType: TextInputType.number,
                controller: userWeight,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'weight (cm)',
                ),
              )),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              calculate();
            },
            child: Text("Calculate"),
          ),
          SizedBox(height: 10),
          Container(
            child: showResult(),
          ),
        ],
      ),
    );
  }
}
