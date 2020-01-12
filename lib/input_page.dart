import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(children: [
        Expanded(
          child: Row(children: [NMContainer(), NMContainer()]),
        ),
        NMContainer(),
        Expanded(
          child: Row(children: [NMContainer(), NMContainer()]),
        ),
      ]),
    );
  }
}

class NMContainer extends StatelessWidget {
  const NMContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Color(0xFF0A0E21),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color(0x10DDAAFF),
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
    );
  }
}
