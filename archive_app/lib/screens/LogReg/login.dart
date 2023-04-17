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
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            child: Stack(fit: StackFit.expand, children: [
              SvgPicture.asset(
                'assets/login.svg',
                fit: BoxFit.fill,
              ),
              const Positioned(
                  left: 40,
                  top: 60,
                  child: Text(
                    "ВХОД",
                    style: TextStyle(
                        fontSize: 60,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ))
            ]),
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.5,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
              child: const LoginForm()),
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
              const SizedBox(height: 50),
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
            text: "Войти",
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
          // сделай маргин
        ],
      ),
    );
  }
}
