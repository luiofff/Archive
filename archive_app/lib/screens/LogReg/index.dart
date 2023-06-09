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

          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/login');
              },
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xFF0075FF),
                foregroundColor: Colors.white.withOpacity(0.95),
                minimumSize: Size(MediaQuery.of(context).size.width * 0.7,
                    MediaQuery.of(context).size.height * 0.1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
              ),
              child: Text(
                "Войти",
                style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5),
              )),

          SizedBox(height: screenHeight * 0.04),

          // REGISTRATION BUTTON
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/registration');
              },
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xFF0075FF),
                foregroundColor: Colors.white.withOpacity(0.95),
                minimumSize: Size(MediaQuery.of(context).size.width * 0.7,
                    MediaQuery.of(context).size.height * 0.1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(color: Colors.white70, width: 1.5)),
              ),
              child: const Text(
                "Регистрация",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.8),
              )),
        ],
      )),
    );
  }
}
