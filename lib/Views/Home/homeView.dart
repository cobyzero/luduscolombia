import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luduscolombia/Util/common.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ludus Colombia Test"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /**
             * Title Text
             */
            const Text(
              'Prueba terminada!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            /**
             * Space
             */
            space(h: 40),
            /**
             * Button
             */
            OutlinedButton(
                onPressed: () {
                  Get.offNamed("/login");
                },
                child: const Text("Volver")),
          ],
        ),
      ),
    );
  }
}
