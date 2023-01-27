// Snapchat Login Form Screen

import 'package:flutter/material.dart';
import '../color_constants.dart';
import 'package:snapchat_ui/widgets/logo_login.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}


// fieldsOnScreen() {
//   return Container(
//     child: Column(
//       children: [
//         Text(
//             "Log In to Snapchat",
//             style: TextStyle(
//               color: Colors.black87,
//               fontSize: 25,
//               fontWeight: FontWeight.w700,
//             )
//         )
//       ],
//     ),
//   );
// }
//
//
//

class _LoginScreenState extends State<LoginScreen> {
  // email and password holder and also the form state

  final _formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 30,
          bottom: 40,
        ),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: IconButton(icon: Icon(
                        Icons.arrow_back_ios,
                        color: ColorConstants.blue,
                        size: 32,
                      ), onPressed: () =>
                        Navigator.pop(context)),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Container(
                      child: Column(
                        children: [
                          LogoLogin()
                          // fieldsOnScreen()
                        ],

                      ),
                    )
                  ],
                ),
              )
            ],
          )),
        ),

      ),
    );
  }
}