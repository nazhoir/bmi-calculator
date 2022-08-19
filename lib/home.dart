import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/enum.dart';
import 'package:bmi_calculator/result.dart';
import 'package:bmi_calculator/widget/card_custom.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Gender? selectGender;

  int _age = 20;
  int _weight = 50;

  void _addAge() {
    setState(() {
      _age++;
    });
  }

  void _minAge() {
    setState(() {
      _age--;
    });
  }

  void _addWeight() {
    setState(() {
      _weight++;
    });
  }

  void _minWeight() {
    setState(() {
      _weight--;
    });
  }

  int heightValue = 140;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
            color: primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectGender = Gender.female;
                      });
                    },
                    child: NewCard(
                      padding: const EdgeInsets.all(10),
                      height: 150,
                      width: 150,
                      backgrounColor: selectGender == Gender.female
                          ? primaryColor
                          : accentTwouColor,
                      title: "FEMALE",
                      titleStyle: TextStyle(
                        color: selectGender == Gender.female
                            ? backgroundColor
                            : primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      content: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.female,
                            size: 70,
                            color: selectGender == Gender.female
                                ? backgroundColor
                                : primaryColor,
                          ),
                        ],
                      ),
                    ),
                  ),

                  //
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectGender = Gender.male;
                      });
                    },
                    child: NewCard(
                      padding: const EdgeInsets.all(10),
                      height: 150,
                      width: 150,
                      backgrounColor: selectGender == Gender.male
                          ? primaryColor
                          : accentTwouColor,
                      title: "MALE",
                      titleStyle: TextStyle(
                        color: selectGender == Gender.male
                            ? backgroundColor
                            : primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      content: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.male,
                            size: 70,
                            color: selectGender == Gender.male
                                ? backgroundColor
                                : primaryColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              NewCard(
                height: 150,
                width: 320,
                backgrounColor: primaryColor,
                margin: const EdgeInsets.symmetric(vertical: 20),
                title: "HEIGHT IN CM",
                titleStyle: const TextStyle(
                  color: backgroundColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                content: Column(
                  children: [
                    Text(
                      "$heightValue cm",
                      style: const TextStyle(
                        color: backgroundColor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Slider(
                      thumbColor: secondaryColor,
                      activeColor: accentOneColor,
                      inactiveColor: accentTwouColor,
                      value: heightValue.toDouble(),
                      onChanged: (value) {
                        setState(() {
                          heightValue = value.toInt();
                        });
                      },
                      min: 120.0,
                      max: 240.0,
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NewCard(
                    padding: const EdgeInsets.all(10),
                    height: 150,
                    width: 150,
                    backgrounColor: primaryColor,
                    title: "AGE",
                    titleStyle: const TextStyle(
                      color: backgroundColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    content: Column(
                      children: [
                        Text(
                          "$_age",
                          style: const TextStyle(
                            fontSize: 30,
                            color: backgroundColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: _minAge,
                              child: const Text(
                                "-",
                                style: TextStyle(
                                  color: backgroundColor,
                                  fontSize: 50,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: _addAge,
                              child: const Text(
                                "+",
                                style: TextStyle(
                                  color: backgroundColor,
                                  fontSize: 50,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  //
                  NewCard(
                    padding: const EdgeInsets.all(10),
                    height: 150,
                    width: 150,
                    backgrounColor: primaryColor,
                    title: "WEIGHT",
                    titleStyle: const TextStyle(
                      color: backgroundColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    content: Column(
                      children: [
                        Text(
                          "$_weight kg",
                          style: const TextStyle(
                            fontSize: 30,
                            color: backgroundColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: _minWeight,
                              child: const Text(
                                "-",
                                style: TextStyle(
                                  color: backgroundColor,
                                  fontSize: 50,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: _addWeight,
                              child: const Text(
                                "+",
                                style: TextStyle(
                                  color: backgroundColor,
                                  fontSize: 50,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              CardButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultScrren(
                        age: _age,
                        weight: _weight,
                        height: heightValue,
                      ),
                    ),
                  );
                },
                height: 60,
                width: 320,
                backgrounColor: primaryColor,
                margin: const EdgeInsets.only(top: 20),
                title: "CALCULATE",
                titleStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: backgroundColor,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
