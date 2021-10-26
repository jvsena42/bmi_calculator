import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/resusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = kInactiveCardColor;
  Color femaleColor = kActiveCardColor;
  int height = 180;

  void updateColor(Gender gender) {
    setState(() {
      if (gender == Gender.male) {
        maleColor = kActiveCardColor;
        femaleColor = kInactiveCardColor;
      } else {
        maleColor = kInactiveCardColor;
        femaleColor = kActiveCardColor;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                CustomCard(
                  onPress: () => updateColor(Gender.male),
                  bgColor: maleColor,
                  cardChild: ColumnGender('Male', FontAwesomeIcons.mars),
                ),
                CustomCard(
                    onPress: () => updateColor(Gender.female),
                    bgColor: femaleColor,
                    cardChild: ColumnGender('Female', FontAwesomeIcons.venus)),
              ],
            ),
          ),
          CustomCard(
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HEIGHT',
                  style: kLabelStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: kNumberTextStyle,
                    ),
                    Text(
                      'cm',
                      style: kLabelStyle,
                    ),
                  ],
                ),
                Slider(
                  value: height.toDouble(),
                  min: 120.0,
                  max: 220.0,
                  activeColor: Color(0XFFEB1555),
                  inactiveColor: kGrayText,
                  onChanged: (double newValue) {
                    setState(() {
                      height = newValue.round();
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                CustomCard(),
                CustomCard(),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16.0),
            color: kBottomContainerColor,
            height: kBottomContainerHeight,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
