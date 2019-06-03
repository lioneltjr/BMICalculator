import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/screens/history_page.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmiResults, @required this.resultText, @required this.interpretation});

  final String bmiResults;
  final String resultText;
  final String interpretation;



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
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
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
                Text(resultText.toUpperCase(),
                style: kResultTextStyle,),
                Text(bmiResults,
                style: kBMITextStyle,),
                Text(
                  interpretation,
                  style: kBodyTextStyle,
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RoundIconButton(
                      icon: FontAwesomeIcons.solidSave,
                      onPressed: () {

                      },
                    ),
                    SizedBox(width: 50.0,),
                    RoundIconButton(
                      icon: FontAwesomeIcons.readme,
                      onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                 builder: (context) => HistoryPage()
                              ));
                      },
                    ),
                  ],

                ),
              ],
            ),),
          ),
          BottomButton(buttonTitle: 'RE-CALCULATE',
          onTap: (){
            Navigator.pop(context);
          }
          ,)
        ],
      ),
    );
  }
}
