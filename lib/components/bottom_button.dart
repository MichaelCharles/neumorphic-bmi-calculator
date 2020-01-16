import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  String label;

  Function onTap;

  BottomButton({this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Container(
          height: kBottomButtonHeight,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: kAccentColor,
                offset: Offset(0, 20),
                blurRadius: 10,
              ),
              BoxShadow(
                color: kAccentColor,
                offset: Offset(0, 10),
                blurRadius: 10,
              )
            ],
          ),
          child: Center(
            child: Text(
              label,
              style: kBottomButtonTextStyle,
            ),
          ),
        ),
        height: kBottomButtonHeight,
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          color: Color(0xFFff6090),
        ),
      ),
    );
  }
}
