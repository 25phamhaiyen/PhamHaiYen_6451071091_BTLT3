import 'package:flutter/material.dart';

void main() {
  runApp(const PointerView());
}

class PointerView extends StatefulWidget {
  const PointerView({super.key});

  @override
  State<PointerView> createState() => _PointerViewState();
}

class _PointerViewState extends State<PointerView> {
  String position = "Touch inside the box";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
  title: const Text("Point Event Demo - 6451071091"),
  leading: IconButton(
    icon: const Icon(Icons.arrow_back),
    onPressed: () {
      Navigator.pop(context);
    },
  ),
),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(position, style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            Center(
              child: Listener(
                onPointerDown: (event) {
                  setState(() {
                    position =
                        "X: ${event.position.dx.toStringAsFixed(1)}, Y: ${event.position.dy.toStringAsFixed(1)}";
                  });
                },
                child: Container(
                  width: 300,
                  height: 300,
                  color: Colors.grey[300],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
