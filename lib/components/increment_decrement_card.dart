import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';
import 'round_icon_button.dart';

class IncrementDecrementCard extends StatelessWidget {
  final Function increment;
  final Function decrement;
  final int value;
  final String label;

  IncrementDecrementCard(
      {this.increment, this.decrement, this.value, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(label, style: kLabelStyle),
        Text(value.toString(), style: kBlackTextStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundIconButton(
              onPressed: increment,
              icon: FontAwesomeIcons.plus,
            ),
            SizedBox(width: 10),
            RoundIconButton(
              onPressed: decrement,
              icon: FontAwesomeIcons.minus,
            )
          ],
        )
      ],
    );
  }
}
