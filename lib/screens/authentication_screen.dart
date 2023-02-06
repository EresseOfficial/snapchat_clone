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
    return Scaffold(
      backgroundColor: ColorConstants.yellow,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 100),
          Container(
              alignment: Alignment.center,
            child: Image.asset('assets/logo.png'),
            height: 160,
          ),
          SizedBox(height: 10),
          Container(
            child: Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: ColorConstants.red,
                    minimumSize: const Size.fromHeight(50),
                  ),
                  onPressed: () {
                    // navigate to second route when tapped
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => LoginScreen()),
                    );
                  },
                  child: const Text(
                      'LOG IN',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: ColorConstants.blue,
                    minimumSize: const Size.fromHeight(50),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SignUpScreen()),
                    );
                  },
                  child: const Text(
                    'SIGN UP',
                    style: TextStyle(fontSize: 24),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}