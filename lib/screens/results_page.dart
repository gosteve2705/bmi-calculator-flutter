import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                'Your Result',
                style: kNumberTextStyle,
              ),
              padding: EdgeInsets.only(left: 20),
            ),
          ),
          Expanded(
            flex: 8,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'OVERWEIGHT',
                    style: kResultsStatusTextStyle,
                  ),
                  Text(
                    '26.7',
                    style: kBMITextStyle,
                  ),
                  Text(
                    'You have a higher than normal body weight. try to  exercise more',
                    style: kResultsDescription,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InputPage(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
