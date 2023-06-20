import 'package:flutter/material.dart';
import 'package:task_organizer/components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacityValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text("Tarefas"),
      ),
      body: AnimatedOpacity(
        opacity: opacityValue ? 1 : 0,
        duration: const Duration(milliseconds: 800),
        child: ListView(
          children: const [
            Task(
                "Aprender Flutter",
                'assets/images/dash.png',
                3),
            Task(
                "Aprender RxDart",
                'assets/images/rxdart.png',
                4),
            Task(
                "Prova do Serpro",
                'assets/images/serpro.png',
                5),
            Task(
                "Meditar",
                'assets/images/meditation.jpeg',
                4),
            Task(
                "Leitura",
                'assets/images/read.jpg',
                2),
            Task(
                "Jogar COD",
                'assets/images/call_of_duty.png',
                4),
            SizedBox(height: 80,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacityValue = !opacityValue;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}