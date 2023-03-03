import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
// const activeCardColor = Colors.amber;
const bottomContainerColor = Color(0xFFEB1555);
const inactiveCardColor = Color(0xFF111328);

enum Gender {
  male,
  female,
  others
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.others;
  // int gender = 0;
  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;
  // void updateColor(Gender selectedgender) {
  //   if (selectedgender == Gender.male) {
  //     if (maleCardColor == inactiveCardColor) {
  //       maleCardColor = activeCardColor;
  //       femaleCardColor = inactiveCardColor;
  //     } else {
  //       maleCardColor = inactiveCardColor;
  //     }
  //   } else {
  //     if (femaleCardColor == inactiveCardColor) {
  //       femaleCardColor = activeCardColor;
  //       maleCardColor = inactiveCardColor;
  //     } else {
  //       femaleCardColor = inactiveCardColor;
  //     }
  //   }
  // }

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
                  child: GestureDetector(
                    onTap: (() {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                      print("Male clicked");
                    }),
                    child: ReusableCard(
                      rang: selectedGender == Gender.male ? activeCardColor : inactiveCardColor,
                      cardChild: iconContent(
                        icon: FontAwesomeIcons.mars,
                        label: "MALE",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (() {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                      print("Female gender chosen.");
                    }),
                    child: ReusableCard(
                      rang: selectedGender == Gender.female ? activeCardColor : inactiveCardColor,
                      cardChild: iconContent(
                        icon: FontAwesomeIcons.venus,
                        label: "FEMALE",
                      ),
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
              child: ReusableCard(
                rang: activeCardColor,
                cardChild: Text("Hello there"),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      rang: activeCardColor,
                      cardChild: Text("Hello there"),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      rang: activeCardColor,
                      cardChild: Text("Hello there"),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double
                  .infinity, //this code changes the bottom width to devices max device width.
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}
