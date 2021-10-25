import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/resusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0XFFEB1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = inactiveCardColor;
  Color femaleColor = activeCardColor;

  void updateColor(Gender gender) {
   setState(() {
     if (gender == Gender.male) {
       maleColor = activeCardColor;
       femaleColor = inactiveCardColor;
     } else {
       maleColor = inactiveCardColor;
       femaleColor = activeCardColor;
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
          CustomCard(),
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
            color: bottomContainerColor,
            height: bottomContainerHeight,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
