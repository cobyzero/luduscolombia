import 'package:flutter/material.dart';
import 'package:luduscolombia/Service/loginService.dart';
import 'package:luduscolombia/Util/common.dart';
import 'package:luduscolombia/Views/Login/Widgets/loginForms.dart';
import 'package:luduscolombia/Views/Login/Widgets/loginTitle.dart';
import 'package:luduscolombia/Views/Widgets/myElevatedButton.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  late final LoginService _loginService;

  @override
  void initState() {
    super.initState();
    _loginService = LoginService(_emailController, _passwordController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /**
                 * Widget Title[Login]
                 */
                const LoginTitle(),
                /**
                 * Space
                 */
                space(h: 16.0),
                /**
                 * Widget Forms[Login]
                 */
                LoginForms(_emailController, _passwordController, _loginService),
                /**
                 * Space
                 */
                space(h: 16.0),
                /**
                 * Widget Button[Login]
                 */
                MyElevatedButton(
                  fun: () => _loginService.login(),
                  text: "Ingresar",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
