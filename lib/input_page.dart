import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'constants.dart';

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
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    rang: selectedGender == Gender.male ? kactiveCardColor : kinactiveCardColor,
                    cardChild: iconContent(
                      icon: FontAwesomeIcons.mars,
                      label: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    rang: selectedGender == Gender.female ? kactiveCardColor : kinactiveCardColor,
                    cardChild: iconContent(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
              child: ReusableCard(
                onPress: () {
                  
                },
                rang: kactiveCardColor,
              cardChild: Text("Hello there"),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        
                      },
                      rang: kactiveCardColor,
                      cardChild: Text("Hello there"),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        
                      },
                      rang: kactiveCardColor,
                      cardChild: Text("Hello there"),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: kbottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double
                  .infinity, //this code changes the bottom width to devices max device width.
              height: kbottomContainerHeight,
            )
          ],
        ));
  }
}
