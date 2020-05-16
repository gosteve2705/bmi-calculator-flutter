import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const reusuableCardColor = Color(0xff1d1e33);
const bottomContainerColor = Color(0xffeb1555);

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
                  child: ReusableCard(
                    colour: reusuableCardColor,
                    cardChild: IconContent(icon: FontAwesomeIcons.mars,label: 'MALE',),
                  ),
                ),
                Expanded(
                  child: ReusableCard(colour: reusuableCardColor,
                    cardChild: IconContent(icon: FontAwesomeIcons.venus,label: 'FEMALE',)
                    ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: reusuableCardColor),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour: reusuableCardColor),
                ),
                Expanded(
                  child: ReusableCard(colour: reusuableCardColor),
                )
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            height: bottomContainerHeight,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10),
          ),
        ],
      ),
    );
  }
}


