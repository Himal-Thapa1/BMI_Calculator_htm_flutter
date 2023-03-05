import 'package:bmi_calculator_htm/buttom_button.dart';
import 'package:bmi_calculator_htm/constants.dart';
import 'package:bmi_calculator_htm/reusable_card.dart';
import 'package:flutter/material.dart';
import 'result_page.dart';
import 'calculator_brain.dart';

class ResultPage extends StatelessWidget {

  ResultPage({required this.interpretation, required this.bmiResult, required this.bmiText});
  final String bmiResult;
  final String bmiText;
  final String interpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
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
                    bmiResult.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiText.toString(),
                  style: kBMITextStyle,),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  )
                ],
              ),
            ),
          ),
          BottomButton(onTap: (){
            Navigator.pop(context);
          }, buttonTitle: "RE-CALCULATE")
        ],
      ),
    );
  }
}
