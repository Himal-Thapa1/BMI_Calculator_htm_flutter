import 'package:bmi_calculator_htm/constants.dart';
import 'package:bmi_calculator_htm/reusable_card.dart';
import 'package:flutter/material.dart';

class ReultPage extends StatelessWidget {
  const ReultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              child: Text(
                "Your Result:",
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              rang: kactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Normal",
                    style: kResultTextStyle,
                  ),
                  Text("15.8",
                  style: kBMITextStyle,),
                  Text(
                    "Your BMI result is normal",
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
