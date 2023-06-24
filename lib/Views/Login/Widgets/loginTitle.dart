import 'package:flutter/material.dart';

class LoginTitle extends StatelessWidget {
  const LoginTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Iniciar Sesion",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
    );
  }
}
