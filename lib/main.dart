import 'package:flutter/material.dart';
import 'package:gerenciadortarefas/screens/form_screen.dart';
import 'package:gerenciadortarefas/screens/tela_inicial.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const FormScreen(),
    );
  }
}
