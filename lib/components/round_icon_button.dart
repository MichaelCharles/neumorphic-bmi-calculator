import 'dart:async';

import 'package:flutter/material.dart';

import '../constants.dart';

class RoundIconButton extends StatefulWidget {
  final IconData icon;
  final Function onPressed;

  RoundIconButton({this.icon, @required this.onPressed});

  @override
  _RoundIconButtonState createState() =>
      _RoundIconButtonState(icon: icon, onPressed: onPressed);
}

class _RoundIconButtonState extends State<RoundIconButton> {
  Timer timer;
  final IconData icon;
  final Function onPressed;

  _RoundIconButtonState({this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        timer = Timer.periodic(Duration(milliseconds: 50), (t) {
          onPressed();
        });
      },
      onTapUp: (details) {
        if (timer != null) timer.cancel();
      },
      onTapCancel: () {
        if (timer != null) timer.cancel();
      },
      child: RawMaterialButton(
        shape: CircleBorder(),
        elevation: 6,
        fillColor: kNotSoDeepPurple,
        constraints: BoxConstraints.tightFor(width: 56, height: 56),
        child: Icon(icon, color: Colors.white),
        onPressed: () {
          if (timer == null || !timer.isActive) {
            onPressed();
          }
        },
      ),
    );
  }
}
