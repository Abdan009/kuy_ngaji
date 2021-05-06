import 'package:flutter/material.dart';

class StatelesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int number = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text('Ramadhan'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            number += 1;
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
