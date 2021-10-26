import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'constants.dart';

class CustomCard extends StatelessWidget {
  CustomCard({this.bgColor = kInactiveCardColor, this.cardChild, this.onPress});

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