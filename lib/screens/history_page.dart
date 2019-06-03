import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI History', style: kTitleTextStyle,)
      ),
      body: StreamBuilder(
        stream: Firestore.instance.collection('users').snapshots(),
        builder: (context, snapshot){
          if(!snapshot.hasData)
            return Text('Loading...');
          return Column(
            children: <Widget>[
              Text(snapshot.data.documents[0]['BMI']),
            ],
          );
        },
      )
    );
  }
}
