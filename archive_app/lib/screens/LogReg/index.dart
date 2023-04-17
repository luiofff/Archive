import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'button.dart';

class LogReg extends StatelessWidget {
  const LogReg({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFF0075FF),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // LOGO
          Container(
            margin: EdgeInsets.only(bottom: screenHeight * 0.2),
            width: screenWidth * 0.5,
            height: screenWidth * 0.5,
            child: SvgPicture.asset(
              'assets/logo.svg',
              fit: BoxFit.fitWidth,
            ),
          ),
          // LOG IN BUTTON
          LogRegButton(
              text: 'Вход',
              callback: () {
                Navigator.of(context).pushNamed('/login');
              }),

          SizedBox(height: screenHeight * 0.04),

          // REGISTRATION BUTTON
          LogRegButton(
              text: 'Регистрация',
              callback: () {
                Navigator.of(context).pushNamed('/registration');
              }),
        ],
      )),
    );
  }
}
