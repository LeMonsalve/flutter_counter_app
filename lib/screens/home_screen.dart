import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontSize25 = TextStyle(fontSize: 25);
    int count = 0;

    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      appBar: AppBar(
        title: const Text("Home Screen"),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Text>[
            const Text("Count Number", style: fontSize25),
            Text("$count", style: fontSize25),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
