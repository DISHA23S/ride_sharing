import 'package:flutter/material.dart';
import 'package:ride_sharing/screens/signin_screen.dart';
import 'package:ride_sharing/screens/signup_screen.dart';
import 'package:ride_sharing/screens/locationacess.dart';
import 'package:ride_sharing/theme/theme.dart';
import 'package:ride_sharing/widgets/custom_scaffold.dart';
import 'package:ride_sharing/widgets/welcome_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key); // Add `: super(key: key)` here.

  @override
  Widget build(BuildContext context) {
    return CustomScaffold( // Remove `const` from here.
      child: Column(
        children: [
          Flexible(
            flex: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 40.0,
              ),

              child: Center(
                child: Align(alignment: Alignment.topCenter, // Align the text to the top
                  child: RichText(

                    textAlign: TextAlign.center,
                    text: const TextSpan( // Remove `const` from here.
                      children: [
                        TextSpan(
                          text: 'Welcome Back!\n',
                          style: TextStyle(
                            fontSize: 45.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        // TextSpan(
                        //   text:
                        //   '\nEnter personal details to your employee account',
                        //   style: TextStyle(
                        //     fontSize: 20,
                        //     // height: 0,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,

              child: Row(
                children: [
                  const Expanded(
                    child: WelcomeButton(
                      buttonText: 'Sign in' ,
                      onTap: SignInScreen(),
                      color: Colors.transparent,
                      textColor: Colors.white,
                    ),

                  ),
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'Sign up' ,
                      onTap: const SignUpScreen(),
                      color: Colors.white ,
                      textColor: lightColorScheme.primary,
                    ),
                  ),

                ],
              ),

            ),
          ),
        ],
      ),
    );
  }
}




