import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String title;
  final Widget page;

  const MenuButton({super.key, required this.title, required this.page});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => page),
          );
        },
        child: Text(title),
      ),
    );
  }
}
