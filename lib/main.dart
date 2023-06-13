import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: Text("Tarefas"),
        ),
        body: ListView(
          children: [
            Task("Aprender Flutter", 'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large'),
            Task("Aprender RxJava", 'https://cdn-images-1.medium.com/v2/resize:fit:1008/1*HDxfd3bSPwgdQ9A3TthVYA.png'),
            Task("Prova do Serpro", 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Serpro.svg/1200px-Serpro.svg.png'),
            Task("Meditar", 'https://manhattanmentalhealthcounseling.com/wp-content/uploads/2019/06/Top-5-Scientific-Findings-on-MeditationMindfulness-881x710.jpeg'),
            Task("Leitura", 'https://thebogotapost.com/wp-content/uploads/2017/06/636052464065850579-137719760_flyer-image-1.jpg'),
            Task("Jogar COD", 'https://is3-ssl.mzstatic.com/image/thumb/Purple126/v4/e1/6e/63/e16e6345-266f-ddf1-bda2-4e1f43995b18/AppIcon-1x_U007emarketing-0-9-0-85-220.png/1200x630wa.png'),
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
  final String image;

  const Task(this.titleTask, this.image, {super.key});

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
                        child: Image.network(
                          widget.image,
                        fit: BoxFit.contain),
                      ),
                      Container(
                        width: 200,
                        child: Text(
                          widget.titleTask,
                          style: TextStyle(
                              fontSize: 24, overflow: TextOverflow.ellipsis),
                        ),
                      ),
                      Container(
                        height: 52,
                        width: 52,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              level++;
                            });
                          },
                          child: Column(
                            children: [
                              Icon(
                                Icons.arrow_drop_up,
                              ),
                              Text(
                                'UP',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: LinearProgressIndicator(
                          color: Colors.white,
                          value: level / 10,
                        ),
                        width: 200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        'Nivel: $level',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
