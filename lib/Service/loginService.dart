import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginService {
  TextEditingController _emailController;
  TextEditingController _passwordController;

  LoginService(this._emailController, this._passwordController);

  void login() {
    if (GetUtils.isEmail(_emailController.text) &&
        GetUtils.isLengthGreaterOrEqual(_passwordController.text, 8)) {
      Get.dialog(
        Center(child: CircularProgressIndicator()),
        barrierDismissible: false,
      );

      // Simular la consulta a un API
      Future.delayed(Duration(seconds: 2), () {
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

  String validatePassword(String value) {
    if (value.isEmpty) {
      return 'Ingrese su contraseña';
    }
    if (value.length < 8) {
      return 'La contraseña debe tener al menos 8 caracteres';
    }
    return "";
  }

  String validateEmail(String value) {
    if (value.isEmpty) {
      return 'Ingrese su correo electrónico';
    }
    if (!value.contains('@') || !value.contains('.') || !value.contains('com')) {
      return 'Correo electrónico inválido';
    }
    return "";
  }
}
