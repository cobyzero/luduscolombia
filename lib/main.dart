import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luduscolombia/Views/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Ludus Colombia Test',
        theme: ThemeData(useMaterial3: true),
        initialRoute: 'login',
        getPages: routesApp());
  }
}
