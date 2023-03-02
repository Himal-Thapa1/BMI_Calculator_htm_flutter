import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                  cardChild: Column(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 80.0,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text("MALE",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color(0xFF8D8E98),
                      ),)
                    ],
                  ),
                  ),

                ),
                Expanded(
                  child: ReusableCard(rang: activeCardColor,
                  cardChild: Text("Hello there"),),
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

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.rang, required this.cardChild});
  final Color rang;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        // color: Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(10),
        color: rang,
      ),
    );
  }
}
