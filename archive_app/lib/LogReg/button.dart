import 'package:flutter/material.dart';

class LogRegButton extends StatelessWidget {
  final String text;
  VoidCallback callback;

  LogRegButton({super.key, required this.text, required this.callback});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: callback,
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xFF0075FF),
          foregroundColor: Colors.white.withOpacity(0.95),
          minimumSize: Size(MediaQuery.of(context).size.width * 0.7,
              MediaQuery.of(context).size.height * 0.1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(color: Colors.white70, width: 1.5),
          ),
          
        ),
        child: Text(text, style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w300),));
  }
}
