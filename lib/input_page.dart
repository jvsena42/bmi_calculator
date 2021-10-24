import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/resusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0XFFEB1555);


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  cardChild: ColumnGender('Male', FontAwesomeIcons.mars),
                ),
                CustomCard(
                    cardChild: ColumnGender('Female', FontAwesomeIcons.venus)
                ),
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
