import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';

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
                style: kTitleTextStyle,)
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(colour: kActiveColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Normal',
                style: kResultTextStyle,),
                Text('18.3',
                style: kBMITextStyle,),
                Text(
                  'asd',
                  style: kBodyTextStyle,
                  textAlign: TextAlign.center,
                )
              ],
            ),),
          ),
        ],
      ),
    );
  }
}
