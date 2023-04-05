import 'package:flutter/material.dart';
import 'button.dart';

class LogReg extends StatelessWidget {
  const LogReg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // LOGO
          Container(
            margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.2),
            height: MediaQuery.of(context).size.width * 0.5,
            width: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffffffff))),
            child: const Text("Logo"),
          ),

          // LOG IN BUTTON
          LogRegButton(
              text: 'Вход',
              callback: () {
                Navigator.of(context).pushNamed('/login');
              }),

          SizedBox(height: MediaQuery.of(context).size.height * 0.04),

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
