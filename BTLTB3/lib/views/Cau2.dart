import 'package:flutter/material.dart';

void main() {
  runApp(const DoubleTapView());
}

class DoubleTapView extends StatefulWidget {
  const DoubleTapView({super.key});

  @override
  State<DoubleTapView> createState() => _DoubleTapViewState();
}

class _DoubleTapViewState extends State<DoubleTapView> {
  Color boxColor = Colors.blue;

  void changeColor() {
    setState(() {
      boxColor = boxColor == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Double Tap Demo - 6451071091"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: GestureDetector(
            onDoubleTap: changeColor,
            child: Container(width: 150, height: 150, color: boxColor),
          ),
        ),
      ),
    );
  }
}
