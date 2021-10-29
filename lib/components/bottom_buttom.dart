import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/pages/results_page.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {

  BottomButton({ this.onTap, this.buttonTitle = '' });

  final String buttonTitle;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(buttonTitle,
            style: kLargeButtonTextStyle,),
        ),
        margin: EdgeInsets.only(top: 16.0),
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
        width: double.infinity,
      ),
    );
  }
}