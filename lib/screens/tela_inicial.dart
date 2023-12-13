
import 'package:flutter/material.dart';
import 'package:gerenciadortarefas/data/task_inherited.dart';
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
        children:  TaskInherited.of(context).taskList,
        padding: EdgeInsets.only(top: 8, bottom: 70),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
              builder: (ContextNew) => FormScreen(taskContext: context,),
          ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

