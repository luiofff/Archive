import 'package:flutter/material.dart';

class LogRegButton extends StatelessWidget {
  final String text;
  VoidCallback callback;

  LogRegButton({super.key, required this.text, required this.callback});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: callback,
        style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(fontSize: 26),
          minimumSize: Size(MediaQuery.of(context).size.width * 0.7,
              MediaQuery.of(context).size.height * 0.1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(color: Colors.white, width: 2),
          ),
          
        ),
        child: Text(text));
  }
}
