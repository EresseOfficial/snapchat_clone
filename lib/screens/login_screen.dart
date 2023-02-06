// Snapchat Login Form Screen

import 'package:flutter/material.dart';
import '../color_constants.dart';
import 'package:snapchat_ui/widgets/logo_login.dart';
// import '../widgets/auth_btn.dart';

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
                      child: Image.asset('assets/logo.png'),
                      height: 100,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Log In to Snapchat",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                        top: 30,
                        left: 30,
                        right: 30,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Email or Username",
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email or username';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            email = value;
                          });
                        },
                      ),
                    ),

                    Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                          left: 30,
                          right: 30,
                        ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            password = value;
                          });
                        },
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        right: 30,
                      ),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),

                  
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