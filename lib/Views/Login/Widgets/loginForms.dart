import 'package:flutter/material.dart';
import 'package:luduscolombia/Service/loginService.dart';
import 'package:luduscolombia/Util/common.dart';
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
          text: "Correo",
          subText: "test@gmail.com",
          validator: (value) => _loginService.validateEmail(value!),
          textInputType: TextInputType.emailAddress,
        ),
        /**
         * Space
         */
        space(h: 16.0),
        /**
         * Form Password
         */
        MyTextFormField(
          controller: _passwordController,
          text: "Contraseña",
          subText: "***********",
          obscureText: true,
          validator: (value) => _loginService.validatePassword(value!),
        ),
      ],
    );
  }
}
