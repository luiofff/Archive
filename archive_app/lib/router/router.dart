import 'package:flutter/material.dart';
import 'package:archive_app/LogReg/index.dart';
import 'package:archive_app/LogReg/login.dart';
import 'package:archive_app/LogReg/registration.dart';

final router = {
  '/' : (context) => const LogReg(),
  '/logreg' : (context) => const MaterialApp(),
  '/login' : (context) => const Login(),
  '/registration': (context) => const Registration(),
};