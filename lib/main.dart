import 'package:duolingo_nepali/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'button.dart';
import 'buttonpressed.dart';

import 'griddashboard.dart';

void main() => runApp(MaterialApp(
    home: MyHomePage()));

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // SET ICONS HERE

  var icons1 = Icons.home;
  var icons2 = Icons.favorite;
  var icons3 = Icons.people;
  var icons4 = Icons.settings;

  //

  bool buttonPressed1 = false;
  bool buttonPressed2 = false;
  bool buttonPressed3 = false;
  bool buttonPressed4 = false;

  void _letsPress1() {
    setState(() {
      buttonPressed1 = true;
      buttonPressed2 = false;
      buttonPressed3 = false;
      buttonPressed4 = false;
    });
  }

  void _letsPress2() {
    setState(() {
      buttonPressed1 = false;
      buttonPressed2 = true;
      buttonPressed3 = false;
      buttonPressed4 = false;
    });
  }

  void _letsPress3() {
    setState(() {
      buttonPressed1 = false;
      buttonPressed2 = false;
      buttonPressed3 = true;
      buttonPressed4 = false;
    });
  }

  void _letsPress4() {
    setState(() {
      buttonPressed1 = false;
      buttonPressed2 = false;
      buttonPressed3 = false;
      buttonPressed4 = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff392850),
      body: Column(children: <Widget>[
        SizedBox(height: 110),
        Padding(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Select 'House' from Images Below", style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    )
                  ),),
                  SizedBox(height: 4,),
                ]
              ),
              IconButton(
                alignment: Alignment.topCenter,
                icon: Image.asset("assets/fire.png", width: 24,),
                onPressed: () {},
              )
            ] ,
          )
        ),
        SizedBox(
          height: 40,
        ),
        GridDashboard(),
        Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  // FIRST BUTTON
                    onTap: _letsPress1,
                    child: buttonPressed1
                        ? ButtonTapped(
                      icon: icons1,
                    )
                        : MyButton(
                      icon: icons1,
                    )),
              ),
              Expanded(
                child: GestureDetector(
                  // SECOND BUTTON
                    onTap: _letsPress2,
                    child: buttonPressed2
                        ? ButtonTapped(
                      icon: icons2,
                    )
                        : MyButton(
                      icon: icons2,
                    )),
              ),
              Expanded(
                child: GestureDetector(
                  // THIRD BUTTON
                    onTap: _letsPress3,
                    child: buttonPressed3
                        ? ButtonTapped(
                      icon: icons3,
                    )
                        : MyButton(
                      icon: icons3,
                    )),
              ),
              Expanded(
                child: GestureDetector(
                  // FOURTH BUTTON
                    onTap: _letsPress4,
                    child: buttonPressed4
                        ? ButtonTapped(
                      icon: icons4,
                    )
                        : MyButton(
                      icon: icons4,
                    )),
              ),
            ],
          ),
        )
      ],
      ),
    );
  }
}