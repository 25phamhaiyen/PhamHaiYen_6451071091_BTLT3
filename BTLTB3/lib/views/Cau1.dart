import 'package:flutter/material.dart';

void main() {
  runApp(const TapView());
}

class TapView extends StatelessWidget {
  const TapView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Tap Demo - 6451071091"),
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
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("You tapped the box!")),
                );
              },
              child: Container(width: 150, height: 150, color: Colors.blue),
            ),
          ),
        ),
      ),
    );
  }
}
