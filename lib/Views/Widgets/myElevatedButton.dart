import 'package:flutter/material.dart';
import 'package:luduscolombia/Util/const.dart';

// ignore: must_be_immutable
class MyElevatedButton extends StatelessWidget {
  MyElevatedButton({super.key, required this.fun, required this.text});
  Function() fun;
  String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: fun,
      style: ElevatedButton.styleFrom(fixedSize: const Size(WIDTH_WIDGETS, 45)),
      child: Text(text),
    );
  }
}
