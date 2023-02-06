import 'package:flutter/material.dart';
import 'package:snapchat_ui/widgets/signup_screen.dart';
import '../color_constants.dart';
import 'login_screen.dart';


class AuthenticationScreen extends StatefulWidget {
  @override
  _AuthenticationScreenState createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 55,
        width: 20,

      ),
    );
  }
}