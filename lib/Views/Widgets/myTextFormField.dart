import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  MyTextFormField(
      {required this.controller,
      required this.text,
      this.validator,
      this.obscureText = false,
      this.textInputType,
      super.key});

  String text;
  TextEditingController controller;
  bool obscureText;
  String? Function(String?)? validator;
  TextInputType? textInputType;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        SizedBox(
          width: 300,
          child: TextFormField(
            keyboardType: textInputType,
            controller: controller,
            obscureText: obscureText,
            decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple),
                ),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
            validator: validator,
          ),
        )
      ],
    );
  }
}
