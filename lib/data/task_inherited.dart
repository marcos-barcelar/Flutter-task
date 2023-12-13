import 'package:flutter/material.dart';
import 'package:gerenciadortarefas/components/tasks.dart';

class TaskInherited extends InheritedWidget {
   TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Task> taskList = [
    Task('Aprender Flutter no intervalo do curso!',
        'assets/imgs/flutter.png', 2),
    Task('Andar de Bike', 'assets/imgs/bike.webp', 5),
    Task('Meditar', 'assets/imgs/meditar.jpeg', 1),
    Task('Ler', 'assets/imgs/ler.jpg', 3),
    Task('Jogar', 'assets/imgs/jogar.jpg', 4),
  ];

  void newTask(String name, String photo, int difficulty) {
    taskList.add(Task(name, photo, difficulty));
  }

  static  TaskInherited of(BuildContext context) {
    final TaskInherited? result = context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No  found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
