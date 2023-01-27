import 'package:flutter/material.dart';

class LogoLogin extends StatefulWidget {
  const LogoLogin({Key? key}) : super(key: key);

  @override
  State<LogoLogin> createState() => _LogoLoginState();
}

class _LogoLoginState extends State<LogoLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 100),
            Container(
              alignment: Alignment.center,
              child: Image.asset('assets/logo.png'),
              height: 160,
            )
          ],
        )
    );
  }
}
