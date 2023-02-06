import 'package:flutter/material.dart';
import '../color_constants.dart';

class AuthBtn extends StatelessWidget {
  @override
  _AuthBtnState createState() => _AuthBtnState();
}

class _AuthBtnState extends State<AuthBtn> {
  @override
  Widget build(BuildContext context) {
    // snapchat login yellow button
    return GestureDetector(
      onTap: onPress,

    )
  }
}