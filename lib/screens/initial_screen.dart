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
                'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                3),
            Task(
                "Aprender RxJava",
                'https://cdn-images-1.medium.com/v2/resize:fit:1008/1*HDxfd3bSPwgdQ9A3TthVYA.png',
                4),
            Task(
                "Prova do Serpro",
                'https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Serpro.svg/1200px-Serpro.svg.png',
                5),
            Task(
                "Meditar",
                'https://manhattanmentalhealthcounseling.com/wp-content/uploads/2019/06/Top-5-Scientific-Findings-on-MeditationMindfulness-881x710.jpeg',
                4),
            Task(
                "Leitura",
                'https://thebogotapost.com/wp-content/uploads/2017/06/636052464065850579-137719760_flyer-image-1.jpg',
                2),
            Task(
                "Jogar COD",
                'https://is3-ssl.mzstatic.com/image/thumb/Purple126/v4/e1/6e/63/e16e6345-266f-ddf1-bda2-4e1f43995b18/AppIcon-1x_U007emarketing-0-9-0-85-220.png/1200x630wa.png',
                4),
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