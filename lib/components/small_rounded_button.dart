import 'package:flutter/material.dart';

class SmallRoundedButton extends StatelessWidget {
  final Function function;
  final IconData icon;

  SmallRoundedButton({this.function, this.icon});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: function,
      shape: CircleBorder(),
      fillColor: Color(0xFFEB1555),
      constraints: BoxConstraints.tightFor(width: 45.0, height: 45.0),
      child: Icon(icon),
    );
  }
}
