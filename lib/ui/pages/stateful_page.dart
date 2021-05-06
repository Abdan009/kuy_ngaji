import 'package:flutter/material.dart';

class StateFullPage extends StatefulWidget {
  @override
  _StateFullPageState createState() => _StateFullPageState();
}

class _StateFullPageState extends State<StateFullPage> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              number += 1;
            });
          },
          child: Text(
            number.toString(),
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
