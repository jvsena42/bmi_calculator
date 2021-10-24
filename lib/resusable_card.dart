import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const activeCardColor = Color(0XFF1D1E33);
const inactiveCardColor = Color(0XFF111328);

class CustomCard extends StatelessWidget {
  CustomCard({this.bgColor = inactiveCardColor, this.cardChild, this.onPress});

  final Color bgColor;
  final Widget? cardChild;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          child: cardChild,
          margin: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}