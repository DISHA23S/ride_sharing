import 'package:flutter/material.dart';
import 'package:ride_sharing/screens/signup_screen.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({Key? key, this.buttonText, this.onTap, this.color, this.textColor});

  final String? buttonText;
  final Widget? onTap;
  final Color? color;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (e) => onTap!,
          ), // MaterialPageRoute
        );
      },
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: color!,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50),
          ), // BorderRadius.only
        ), // BoxDecoration
        child: Text(
          buttonText!,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: textColor!,
          ), // TextStyle
        ), // Text
      ), // Container
    );
  }
}