import 'package:flutter/material.dart';

const double kBottomButtonHeight = 100;
enum kSex { male, female }

const Color kAccentColor = Colors.pink;
const int bgRed = 40;
const int bgGreen = 44;
const int bgBlue = 61;

const Color kDeepPurple = Color.fromRGBO(bgRed, bgGreen, bgBlue, 1);
const Color kDeeperPurple =
    Color.fromRGBO(bgRed - 30, bgGreen - 30, bgBlue - 30, 1);
const Color kNotSoDeepPurple =
    Color.fromRGBO(bgRed + 10, bgGreen + 10, bgBlue + 10, 1);

const kLabelStyle = TextStyle(fontSize: 18, color: Colors.white70);
const kBlackTextStyle = TextStyle(fontSize: 50, fontWeight: FontWeight.w800);
const kBottomButtonTextStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w400,
    letterSpacing: 7,
    color: Colors.white);
