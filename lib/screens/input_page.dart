import 'dart:math';

import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/components/increment_decrement_card.dart';
import 'package:bmi_calculator/components/label_unit.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../components/bottom_button.dart';
import '../components/nmcontainer.dart';
import '../components/sex_selector.dart';
import '../constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  kSex selectedSex = Random().nextInt(2) == 1 ? kSex.male : kSex.female;
  int height = 180;
  int weight = 80;
  int age = 18;

  void incrementWeight() {
    setState(() {
      weight++;
    });
  }

  void decrementWeight() {
    setState(() {
      weight--;
    });
  }

  void incrementAge() {
    setState(() {
      age++;
    });
  }

  void decrementAge() {
    setState(() {
      age--;
    });
  }

  void setSex(kSex sex) {
    setState(() {
      selectedSex = sex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(children: [
        SizedBox(height: 20),
        SexSelector(selectedSex: selectedSex, setSex: setSex),
        NMContainer(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("HEIGHT", style: kLabelStyle),
              ],
            ),
            LabeledUnit(value: height, label: 'cm'),
            Slider(
              value: height.toDouble(),
              min: 120,
              max: 220,
              activeColor: kAccentColor,
              inactiveColor: kDeeperPurple,
              onChanged: (val) {
                setState(() {
                  height = val.toInt();
                });
              },
            ),
          ],
        )),
        Expanded(
          child: Row(
            children: [
              NMContainer(
                  child: IncrementDecrementCard(
                label: 'WEIGHT',
                value: weight,
                increment: incrementWeight,
                decrement: decrementWeight,
              )),
              NMContainer(
                  child: IncrementDecrementCard(
                label: 'AGE',
                value: age,
                increment: incrementAge,
                decrement: decrementAge,
              )),
            ],
          ),
        ),
        BottomButton(
            label: "CALCULATE",
            onTap: () {
              CalculatorBrain calc =
                  CalculatorBrain(height: height, weight: weight);

              calc.calculateBMI();

              Navigator.pushNamed(context, 'results',
                  arguments: ResultsPageArguments(
                    interpretation: calc.getInterpretation(),
                    resultText: calc.getResult(),
                    bmiResult: calc.calculateBMI(),
                  ));
            })
      ]),
    );
  }
}
