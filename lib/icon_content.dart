
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const grayText = Color(0XFF8D8E98);
const labelStyle = TextStyle(
  fontSize: 18.0,
  color: grayText,
);
const iconSize = 80.0;

class ColumnGender extends StatelessWidget {

  ColumnGender(this.label, this.iconGender);

  final String label;
  final IconData iconGender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          iconGender,
          size: iconSize,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: labelStyle,
        ),
      ],
    );
  }
}