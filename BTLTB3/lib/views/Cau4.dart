import 'package:flutter/material.dart';

void main() {
  runApp(const TapCounterView());
}

class TapCounterView extends StatefulWidget {
  const TapCounterView({super.key});

  @override
  State<TapCounterView> createState() => _TapCounterViewState();
}

class _TapCounterViewState extends State<TapCounterView> {
  int count = 0;

  void increase() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
  title: const Text("Tap Counter Demo - 6451071091"),
  leading: IconButton(
    icon: const Icon(Icons.arrow_back),
    onPressed: () {
      Navigator.pop(context);
    },
  ),
),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Tap count: $count",
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: increase,
                child: const Text("Tap Here"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
