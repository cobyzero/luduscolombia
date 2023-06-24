import 'package:flutter/material.dart';
import 'package:luduscolombia/Service/loginService.dart';
import 'package:luduscolombia/Views/Widgets/myTextFormField.dart';

class LoginForms extends StatelessWidget {
  final TextEditingController _emailController;
  final TextEditingController _passwordController;
  final LoginService _loginService;
  const LoginForms(this._emailController, this._passwordController, this._loginService,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /**
         * Form Email
         */
        MyTextFormField(
          controller: _emailController,
          text: "E-mail",
          obscureText: true,
          validator: (value) => _loginService.validateEmail(value!),
          textInputType: TextInputType.emailAddress,
        ),
        /**
         * Space
         */
        const SizedBox(height: 16.0),
        /**
         * Form Password
         */
        MyTextFormField(
          controller: _passwordController,
          text: "Password",
          obscureText: true,
          validator: (value) => _loginService.validatePassword(value!),
        )
      ],
    );
  }
}
