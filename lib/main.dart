import 'package:flutter/material.dart';

void main() {
  runApp(const TaskOrganizer());
}

class TaskOrganizer extends StatelessWidget {
  const TaskOrganizer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tarefas"),
        ),
        body: ListView(
          children: [
            Task("Aprender Flutter"),
            Task("Aprender RxJava"),
            Task("Estudar para a prova do Serpro"),
            Task("Estudar para a prova do Serpro"),
            Task("Estudar para a prova do Serpro"),
            Task("Estudar para a prova do Serpro"),
            Task("Estudar para a prova do Serpro"),
            Task("Estudar para a prova do Serpro"),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String titleTask;

  const Task(this.titleTask, {super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              color: Colors.blue,
              height: 140,
            ),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.black26,
                        width: 72,
                        height: 100,
                      ),
                      Container(
                          width: 200,
                          child: Text(
                            widget.titleTask,
                            style: TextStyle(
                                fontSize: 24, overflow: TextOverflow.ellipsis),
                          )),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              level++;
                            });
                          },
                          child: Icon(Icons.arrow_drop_up))
                    ],
                  ),
                ),
                Text(
                  'Nivel: $level',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
