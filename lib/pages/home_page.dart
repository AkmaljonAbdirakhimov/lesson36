import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("36-Dars"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              color: Colors.blue,
              child: const Stack(
                children: [
                  Align(
                    alignment: Alignment(-0.7, 0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.amber,
                    ),
                  ),
                  Align(
                    alignment: Alignment(-0.5, 0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.red,
                    ),
                  ),
                  Align(
                    alignment: Alignment(-0.3, 0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  Align(
                    alignment: Alignment(-0.1, 0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.green,
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.1, 0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 300,
              color: Colors.white,
              child: const Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -100,
                    left: 50,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.amber,
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 80,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.red,
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 120,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blue,
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 160,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.green,
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 200,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
