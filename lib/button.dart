import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  var icon;

  MyButton({
    Key key,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(

        padding: EdgeInsets.all(14),
        child: Icon(
          icon,
          size: 40,
          color: Colors.grey[800],
        ),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.purple[500],
            boxShadow: [
              BoxShadow(
                  color: Colors.green[600],
                  offset: Offset(1.0, 1.0),
                  blurRadius: 3.0,
                  spreadRadius: 0.3),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-1.0, -1.0),
                  blurRadius: 0.2,
                  spreadRadius: 0.5),
            ],
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.grey[200],
                  Colors.grey[300],
                  Colors.grey[400],
                  Colors.grey[500],
                ],
                stops: [
                  0.1,
                  0.3,
                  0.8,
                  1
                ])),
      ),
    );
  }
}