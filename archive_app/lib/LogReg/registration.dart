import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'button.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/registration2.png'),
                fit: BoxFit.fill)),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                SvgPicture.asset(
                  'assets/reg.svg',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height,
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    margin: const EdgeInsets.fromLTRB(16, 20, 80, 0),
                    padding: const EdgeInsets.all(16),
                    child: const LoginForm()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _phoneNum = '';
  String _password = '';
  String _passwordRepeat = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.alternate_email),
                labelText: 'Email',
                border: UnderlineInputBorder()),
            validator: (value) {
              if (value != null &&
                  !RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value)) {
                return 'Введите свой email';
              }
              return null;
            },
            onSaved: (value) {
              _email = value!;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.phone),
                labelText: 'Номер телефона',
                border: UnderlineInputBorder()),
            validator: (value) {
              if (value != null && !RegExp(r"^\+7|8\d{10}$").hasMatch(value)) {
                return 'Введите свой номер телефона';
              }
              return null;
            },
            onSaved: (value) {
              _phoneNum = value!;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock_outline),
                labelText: 'Пароль',
                border: UnderlineInputBorder()),
            validator: (value) {
              if (value != null) {
                return 'Введите свой пароль';
              }
              return null;
            },
            onSaved: (value) {
              _password = value!;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock_outline),
                labelText: 'Повторите пароль',
                border: UnderlineInputBorder()),
            validator: (value) {
              if (value != _password) {
                return 'Пароли не совпадают';
              }
              return null;
            },
            onSaved: (value) {
              _passwordRepeat = value!;
            },
          ),
          const SizedBox(height: 40),
          const Expanded(child: Text('')),
          LogRegButton(
            text: "Вперед",
            callback: () {
              _email + _password;
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              } else {
                print("notValid");
              }
              if (_password != _passwordRepeat) {
                return;
              }
            },
          )
        ],
      ),
    );
  }
}
