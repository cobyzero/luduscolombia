import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginService {
  final TextEditingController _emailController;
  final TextEditingController _passwordController;

  LoginService(this._emailController, this._passwordController);

  void login() {
    if (GetUtils.isEmail(_emailController.text) &&
        GetUtils.isLengthGreaterOrEqual(_passwordController.text, 8)) {
      Get.dialog(
        const Center(child: CircularProgressIndicator()),
        barrierDismissible: false,
      );

      // Simula una API
      Future.delayed(const Duration(seconds: 2), () {
        Get.back();

        // Navegar a la siguiente pantalla después de la autenticación exitosa
        Get.offNamed('/home');
      });
    } else {
      Get.snackbar(
        'Error',
        'Por favor, ingrese los datos correctamente',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  String? validatePassword(String value) {
    if (value.isEmpty) {
      return 'Ingrese su contraseña';
    }
    if (value.length < 8) {
      return 'La contraseña debe tener al menos 8 caracteres';
    }
    return null;
  }

  String? validateEmail(String value) {
    if (value.isEmpty) {
      return 'Ingrese su correo electrónico';
    }
    if (!value.contains('@') || !value.contains('.') || !value.contains('com')) {
      return 'Correo electrónico inválido';
    }
    return null;
  }
}
