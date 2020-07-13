import 'package:flutter/material.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/screens/login_screen.dart';
import 'package:flutter_auth/screens/signup_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                'assets/images/main_top.png',
                width: size.width * .3,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                'assets/images/main_bottom.png',
                width: size.width * .2,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'welcome to edu'.toUpperCase(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: size.height * .03),
                SvgPicture.asset(
                  'assets/icons/chat.svg',
                  height: size.height * 0.45,
                ),
                SizedBox(height: size.height * .05),
                RoundedButton(
                  color: kPrimaryColor,
                  textColor: Colors.white,
                  text: 'LOGIN',
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                ),
                RoundedButton(
                  color: kPrimaryLightColor,
                  textColor: Colors.black,
                  text: 'SIGNUP',
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignupScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
