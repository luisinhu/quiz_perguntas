import 'package:flutter/material.dart';
import 'package:quiz/pages/tela_inicial.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: tela_daniel(),
      debugShowCheckedModeBanner: false,

    );
  }
}

