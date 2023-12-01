
import 'package:flutter/material.dart';
import '../components/tasks.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  bool opacidade = true;
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Tarefas'),
        leading: Icon(Icons.add_task),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1.0 : 0.0,
        duration: Duration(seconds: 1),
        child: ListView(
          children: [
            Task('Aprender Flutter com o Matheus', 'assets/imgs/flutter.png', 1),
            Task('Andar de bike', 'assets/imgs/bike.webp', 2),
            Task(
                'Meditar',
                'assets/imgs/meditar.jpeg',
                3),
            Task(
                'Ler',
                'assets/imgs/ler.jpg',
                4),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: Icon(Icons.remove_red_eye),
      ),
    );
  }
}

