import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;

  void onAdd() => setState(() => count++);

  void onDecrement() => setState(() => count--);

  void onRestart() => setState(() => count = 0);

  @override
  Widget build(BuildContext context) {
    const fontSize25 = TextStyle(fontSize: 25);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
        elevation: 5,
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActions(
        onAdd: onAdd,
        onDecrement: onDecrement,
        onRestart: onRestart,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final VoidCallback onAdd;
  final VoidCallback onDecrement;
  final VoidCallback onRestart;

  const CustomFloatingActions({
    super.key,
    required this.onAdd,
    required this.onDecrement,
    required this.onRestart,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          tooltip: "Decrement",
          onPressed: onDecrement,
          child: const Icon(Icons.exposure_minus_1),
        ),
        FloatingActionButton(
          tooltip: "Restart",
          onPressed: onRestart,
          child: const Icon(Icons.exposure_zero),
        ),
        FloatingActionButton(
          tooltip: "Add",
          onPressed: onAdd,
          child: const Icon(Icons.exposure_plus_1),
        ),
      ],
    );
  }
}
