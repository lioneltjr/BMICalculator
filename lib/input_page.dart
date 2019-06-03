import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const defaultCardColor = 0xFF1D1E33;
const Color activeColor = Color(0xFF1D1E33);
const inactiveColor = Color(0xFF111328);


enum Gender{
  male,
  female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState((){
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender == Gender.male ? activeColor : inactiveColor,
                      cardChild: IconContent(icon: FontAwesomeIcons.mars,label: 'MALE',),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap:(){
                      setState(() {
                        selectedGender = Gender.female;
                      });
    },
                    child: ReusableCard(
                      colour: selectedGender == Gender.female ? activeColor : inactiveColor,
                      cardChild: IconContent(icon: FontAwesomeIcons.venus, label: 'FEMALE',),
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
              child: ReusableCard(colour: Color(defaultCardColor)),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour: Color(defaultCardColor)),
                ),
                Expanded(
                  child: ReusableCard(colour: Color(defaultCardColor)),
                ),
              ],
            )),
            Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}



