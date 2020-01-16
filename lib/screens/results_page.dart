import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/nmcontainer.dart';
import 'package:flutter/material.dart';

import '../components/bottom_button.dart';

class ResultsPageArguments {
  ResultsPageArguments(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;
}

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ResultsPageArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('RESULTS'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Row(
              children: [
                Text(
                  "Your Result",
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          NMContainer(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    args.resultText,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.tealAccent),
                  ),
                  Text(
                    args.bmiResult,
                    style: TextStyle(fontSize: 90, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    args.interpretation,
                    style: TextStyle(fontSize: 24, color: Colors.white70),
                  )
                ],
              ),
            ),
          ),
          BottomButton(
              label: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
