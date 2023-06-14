import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          centerTitle: true,
          title: Text('Die Roller'),
          titleTextStyle: TextStyle(fontFamily: "Roboto", fontSize: 35),
          backgroundColor: Colors.black,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int DieNumber = 1;

  void changeDiceFace() {
    setState(() {
      DieNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: Expanded(
                // child: ElevatedButton(
                child: Image.asset(
                  'images/images/dice$DieNumber.png',
                ),
                // onPressed: () {
                //   changeDiceFace();
                // },
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 40),
                textStyle: TextStyle(fontSize: 28, fontFamily: "Roboto"),
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
              ),
              child: Text('Roll Die'),
              // style: Color.black(),
              onPressed: () {
                changeDiceFace();
              },
            ),
            // ),
          ],
        ),
      ),
    );
  }
}
