import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/formula.dart';
import 'package:flutter/material.dart';

class ResultScrren extends StatefulWidget {
  const ResultScrren({
    Key? key,
    required this.age,
    required this.weight,
    required this.height,
  }) : super(key: key);

  final int weight;
  final int height;
  final int age;

  @override
  State<ResultScrren> createState() => _ResultScrrenState();
}

class _ResultScrrenState extends State<ResultScrren> {
  Logic logic = Logic();
  double bmiResult = 0;

  @override
  void initState() {
    bmiResult = logic.calculateBMI(widget.weight, widget.height);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: backgroundColor,
          foregroundColor: primaryColor,
          titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: primaryColor,
          ),
          centerTitle: true,
          title: const Text("RESULT"),
        ),
        backgroundColor: backgroundColor,
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                bmiResult.toStringAsFixed(2),
                style: const TextStyle(
                  color: primaryColor,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (bmiResult <= 17.0)
                const SizedBox(
                  width: 150,
                  child: Text(
                    "Kurus, Kekurangan berat badan berat",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              if (bmiResult >= 17.0 && bmiResult <= 18.5)
                const SizedBox(
                  width: 150,
                  child: Text(
                    "Kurus, Kekurangan berat badan ringan",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              if (bmiResult >= 18.4 && bmiResult <= 25.1)
                const SizedBox(
                  width: 150,
                  child: Text(
                    "Normal",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              if (bmiResult >= 25.1 && bmiResult <= 27.1)
                const SizedBox(
                  width: 150,
                  child: Text(
                    "Gemuk, Kelebihan berat badan tingkat ringan",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              if (bmiResult >= 27)
                const SizedBox(
                  width: 150,
                  child: Text(
                    "	Gemuk, Kelebihan berat badan tingkat berat",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
            ],
          ),
        ));
  }
}
