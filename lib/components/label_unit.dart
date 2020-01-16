import 'package:flutter/material.dart';

import '../constants.dart';

class LabeledUnit extends StatelessWidget {
  LabeledUnit({this.value, this.label});

  final int value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: <Widget>[
        Text(
          value.toString(),
          style: kBlackTextStyle,
        ),
        Text(label, style: kLabelStyle)
      ],
    );
  }
}
