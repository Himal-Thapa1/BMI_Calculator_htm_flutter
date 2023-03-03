import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(rang: activeCardColor,
                  cardChild: iconContent(icon: FontAwesomeIcons.mars, label: "MALE",),
                  ),

                ),
                Expanded(
                  child: ReusableCard(rang: activeCardColor,
                  cardChild: iconContent(icon: FontAwesomeIcons.venus, label: "FEMALE",),),
                ),
              ],
            )),
            Expanded(
              child:ReusableCard(rang: activeCardColor,
              cardChild: Text("Hello there"),),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(rang: activeCardColor,
                    cardChild: Text("Hello there"),),
                  ),
                  Expanded(
                    child: ReusableCard(rang: activeCardColor,
                    cardChild: Text("Hello there"),),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity, //this code changes the bottom width to devices max device width.
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}


