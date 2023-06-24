import 'package:flutter/material.dart';
import 'package:luduscolombia/Service/loginService.dart';

class LoginElevatedButton extends StatelessWidget {
  const LoginElevatedButton(this._loginService, {super.key});
  final LoginService _loginService;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _loginService.login,
      child: const Text('Login'),
    );
  }
}
