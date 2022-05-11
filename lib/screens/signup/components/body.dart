import 'package:flutter/material.dart';
import 'package:risetimedev/Screens/Login/login_screen.dart';
import 'package:risetimedev/Screens/Signup/components/background.dart';
import 'package:risetimedev/Screens/Signup/components/or_divider.dart';
import 'package:risetimedev/Screens/Signup/components/social_icon.dart';
import 'package:risetimedev/components/already_have_an_account_acheck.dart';
import 'package:risetimedev/components/rounded_button.dart';
import 'package:risetimedev/components/rounded_input_field.dart';
import 'package:risetimedev/components/rounded_password_field.dart';
import 'package:risetimedev/services/auth/auth_methods.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  String user_name = "";
  String user_email = "";
  String user_password = "";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/images/risetime_logo.png",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Name",
              onChanged: (value) {
                user_name = value;
              },
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {
                user_email = value;
              },
            ),
            RoundedPasswordField(
              onChanged: (value) {
                user_password = value;
              },
            ),
            RoundedButton(
                text: "SIGNUP",
                press: () {
                  context
                      .read<FlutterFireAuthService>()
                      .createAccount(user_name, user_email, user_password);
                }),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
