import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Buttons'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // RaisedButton
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('A Raised Button'),
              onPressed: () {
                print('Pressed raised button');
              },
            ),

            // ElebatedButton - replacement for RaisedButton
            // automatically pick up the theme color
            // advantage: do not have to add colors manually
            ElevatedButton(
              // style: ButtonStyle(
                // backgroundColor: MaterialStateProperty.all(Colors.blue),
                // foregroundColor: MaterialStateProperty.all(Colors.white),
              // ),
              // OR
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // background color
                onPrimary: Colors.white, // text color
              ),
              child: Text('An Elevated Button'),
              onPressed: () {
                print('Pressed elevated button');
              },
            ),

            // FlatButton
            FlatButton(
              child: Text('A Flat Button'),
              textColor: Colors.blue,
              onPressed: () {
                print('Pressed flat button');
              },
            ),

            // TextButton - replacement for FlatButton
            TextButton(
              child: Text('A Text Button'),
              // style: ButtonStyle(
                // backgroundColor: MaterialStateProperty.all(Colors.blue),
                // foregroundColor: MaterialStateProperty.all(Colors.white),
              // ),
              // OR
              style: TextButton.styleFrom(
                primary: Colors.blue, // text color
                // no onPrimary as there is only text, no background
              ),
              onPressed: () {
                print('Pressed text button');
              },
            ),

            // OutlineButton
            OutlineButton(
              borderSide: BorderSide(color: Colors.blue),
              textColor: Colors.blue,
              child: Text('An Outline Button'),
              onPressed: () {
                print('Pressed outline button');
              },
            ),

            // OutlinedButton - replacement for OutlineButton
            OutlinedButton(
              // style: BorderStyle(side),
              // OR
              style: OutlinedButton.styleFrom(
                primary: Colors.orange, // text color
                side: BorderSide(color: Colors.blue), // border color
              ),
              child: Text('An Outlined Button'),
              onPressed: () {
                print('Pressed outlined button');
              },
            ),
          ]
        ),
        ),
    )
  }
}
