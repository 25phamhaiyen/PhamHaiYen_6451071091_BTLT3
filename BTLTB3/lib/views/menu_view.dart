import 'package:flutter/material.dart';
import '../widgets/menu_button.dart';
import 'Cau1.dart';
import 'Cau2.dart';
import 'Cau3.dart';
import 'Cau4.dart';
import 'Cau5.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Gesture Demo Menu")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            MenuButton(title: "Bài 1: Tap Demo", page: TapView()),
            MenuButton(title: "Bài 2: Double Tap", page: DoubleTapView()),
            MenuButton(title: "Bài 3: Long Press", page: LongPressView()),
            MenuButton(title: "Bài 4: Tap Counter", page: TapCounterView()),
            MenuButton(title: "Bài 5: Pointer Event", page: PointerView()),
          ],
        ),
      ),
    );
  }
}
