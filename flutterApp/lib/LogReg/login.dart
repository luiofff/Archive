import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'button.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            margin: const EdgeInsets.only(left: 40),
            child: const Align(
              alignment: Alignment.bottomLeft,
              child: Text('Вход', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Color(0xffffffff)),)),
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SvgPicture.asset(
                'assets/log.svg',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.45,
                  margin: const EdgeInsets.fromLTRB(26, 0, 26, 16),
                  padding: const EdgeInsets.all(16),
                  child: const LoginForm()),
            ],
          ),
        ],
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
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
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
              const SizedBox(height: 30),
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline),
                    labelText: 'Пароль',
                    border: UnderlineInputBorder()),
                validator: (value) {
                  if (value == null) {
                    return 'Введите свой пароль';
                  }
                  return null;
                },
                onSaved: (value) {
                  _password = value!;
                },
              ),
            ],
          ),
          //const Expanded(child: Text('')),
          LogRegButton(
            text: "Вперед",
            callback: () {
              _email + _password;
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                print(_formKey.currentState);
              } else {
                print("notValid");
              }
            },
          )
        ],
      ),
    );
  }
}
