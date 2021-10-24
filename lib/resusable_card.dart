import 'package:flutter/widgets.dart';

const darkGray = Color(0XFF1D1E33);

class CustomCard extends StatelessWidget {
  CustomCard({this.bgColor = darkGray, this.cardChild});

  final Color bgColor;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}