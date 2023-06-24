import 'package:flutter/material.dart';
import 'package:luduscolombia/Util/common.dart';
import 'package:luduscolombia/Util/const.dart';

// ignore: must_be_immutable
class MyTextFormField extends StatelessWidget {
  MyTextFormField(
      {required this.controller,
      required this.text,
      this.validator,
      this.obscureText = false,
      this.textInputType,
      this.subText,
      super.key});

  String text;
  TextEditingController controller;
  bool obscureText;
  String? Function(String?)? validator;
  TextInputType? textInputType;
  String? subText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /**
         * Text Title
         */
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        /**
         * Space
         */
        space(h: 10),
        /**
         * Form
         */
        SizedBox(
          width: WIDTH_WIDGETS,
          child: TextFormField(
            keyboardType: textInputType,
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
                hintText: subText ?? text,
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple),
                ),
                enabledBorder:
                    const OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
            validator: validator,
          ),
        )
      ],
    );
  }
}
