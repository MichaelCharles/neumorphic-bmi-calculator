import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'nmcontainer.dart';

class SexSelector extends StatelessWidget {
  final kSex selectedSex;
  final Function setSex;

  SexSelector({this.selectedSex, this.setSex});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          NMContainer(
            onTap: () {
              setSex(kSex.male);
            },
            child: IconContent(
                icon: FontAwesomeIcons.mars,
                label: kSex.male,
                selected: selectedSex),
          ),
          NMContainer(
            onTap: () {
              setSex(kSex.female);
            },
            child: IconContent(
                icon: FontAwesomeIcons.venus,
                label: kSex.female,
                selected: selectedSex),
          ),
        ],
      ),
    );
  }
}
