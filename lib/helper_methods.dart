import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/small_rounded_button.dart';
import 'constants.dart';

Column buildColumn(
    String text, int value, Function functionAdd, Function functionSubtract) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        text,
        style: kLabelTextStyle,
      ),
      Text(
        value.toString(),
        style: kLabelNumberStyle,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SmallRoundedButton(
            function: functionSubtract,
            icon: FontAwesomeIcons.minus,
          ),
          SizedBox(
            width: 10.0,
          ),
          SmallRoundedButton(
            function: functionAdd,
            icon: FontAwesomeIcons.plus,
          )
        ],
      )
    ],
  );
}
