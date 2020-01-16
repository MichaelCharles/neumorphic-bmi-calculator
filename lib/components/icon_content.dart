import 'package:flutter/material.dart';

import '../constants.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final kSex label;
  final kSex selected;

  IconContent({@required this.icon, @required this.label, this.selected});

  @override
  Widget build(BuildContext context) {
    Color iconColor = label == selected ? Colors.pink : Colors.white;
    Color labelColor = label == selected ? Colors.pink : Colors.white70;
    String iconLabel = label == kSex.male ? "MALE" : "FEMALE";

    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 80,
            color: iconColor,
          ),
          SizedBox(height: 15),
          Text(
            iconLabel,
            style: TextStyle(fontSize: 18, color: labelColor),
          )
        ]);
  }
}
