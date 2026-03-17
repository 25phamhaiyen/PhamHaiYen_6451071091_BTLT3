import 'package:flutter/material.dart';

void main() {
  runApp(const LongPressView());
}

class LongPressView extends StatelessWidget {
  const LongPressView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Long Press Demo - 6451071091"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: Builder(
            builder: (context) => GestureDetector(
              onLongPress: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Long press detected")),
                );
              },
              child: const Card(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Text("Press and hold me"),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
