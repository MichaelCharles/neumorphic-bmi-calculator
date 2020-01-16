import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class NMContainer extends StatelessWidget {
  final Widget child;

  final Function onTap;

  const NMContainer({
    this.child,
    this.onTap,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
            child: child,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: kDeepPurple,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color(0x33DDAAFF),
                  offset: Offset(-2, -2),
                  blurRadius: 8,
                ),
                BoxShadow(
                  color: Color(0x99000000),
                  offset: Offset(2, 2),
                  blurRadius: 8,
                ),
              ],
            )),
      ),
    );
  }
}
