import 'package:flutter/material.dart';
import 'package:myapp/LogReg/index.dart';
import 'package:myapp/LogReg/login.dart';
import 'package:myapp/LogReg/registration.dart';

final router = {
  '/' : (context) => const LogReg(),
  '/logreg' : (context) => const MaterialApp(),
  '/login' : (context) => const Login(),
  '/registration': (context) => const Registration(),
};