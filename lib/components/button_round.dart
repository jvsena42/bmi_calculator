import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoundIconButton extends StatelessWidget {

  RoundIconButton({this.isAdd = true, this.onPress});

  final _iconAdd = FaIcon(FontAwesomeIcons.plus);
  final _iconMinus = FaIcon(FontAwesomeIcons.minus);

  final bool isAdd;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      child: isAdd ? _iconAdd : _iconMinus,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 40.0,
        height: 40.0,
      ),
    );
  }

}
