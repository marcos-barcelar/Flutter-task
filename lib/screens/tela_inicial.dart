
import 'package:flutter/material.dart';
import 'package:gerenciadortarefas/screens/form_screen.dart';
import '../components/tasks.dart';


class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Tarefas'),
        leading: Icon(Icons.add_task),
      ),
      body: ListView(
        children: const [
          Task('Aprender Flutter no intervalo do curso!',
              'assets/imgs/flutter.png', 2),
          Task('Andar de Bike', 'assets/imgs/bike.webp', 5),
          Task('Meditar', 'assets/imgs/meditar.jpeg', 1),
          Task('Ler', 'assets/imgs/ler.jpg', 3),
          Task('Jogar', 'assets/imgs/jogar.jpg', 4),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
              builder: (context) => FormScreen(),
          ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

