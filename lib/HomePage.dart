import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

  AssetImage diceimage;
  AssetImage diceimage2;

  @override
  void initState() {
    super.initState();
    setState(() {
      diceimage = one;
      diceimage2 = six;
    });
  }

  void rollDice() {
    var rand = (1 + Random().nextInt(6));
    var rand2 = (1 + Random().nextInt(6));

    AssetImage newImage;
    AssetImage newImage2;

    switch (rand) {
      case 1:
        newImage = one;
        break;
      case 2:
        newImage = two;
        break;
      case 3:
        newImage = three;
        break;
      case 4:
        newImage = four;
        break;
      case 5:
        newImage = five;
        break;
      case 6:
        newImage = six;
        break;
    }
    switch (rand2) {
      case 1:
        newImage2 = one;
        break;
      case 2:
        newImage2 = two;
        break;
      case 3:
        newImage2 = three;
        break;
      case 4:
        newImage2 = four;
        break;
      case 5:
        newImage2 = five;
        break;
      case 6:
        newImage2 = six;
        break;
    }
    setState(() {
      diceimage = newImage;
      diceimage2 = newImage2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice Roller"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: diceimage,
                width: 100.0,
                height: 100.0,
              ),
              Container(
                margin: EdgeInsets.only(top: 50.0),
                child: Image(
                  image: diceimage2,
                  width: 100.0,
                  height: 100.0,
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 80.0),
                  child: ButtonTheme(
                    height: 70.0,
                    minWidth: 120.0,
                    child: RaisedButton(
                      color: Colors.orangeAccent,
                      padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                      child: Text(
                        "Roll The Dice !",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      onPressed: rollDice,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
