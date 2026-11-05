import 'package:flutter/material.dart';

class ColorScreen extends StatefulWidget {
  const ColorScreen({super.key});

  @override
  State<ColorScreen> createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
  int colorIndex = 0;

  final List<Color> colors = [Colors.red, Colors.blue, Colors.green];

  void changeColor() {
    setState(() {
      colorIndex = (colorIndex + 1) % colors.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Փոխվող քառակուսի'), centerTitle: true),

      body: Center(
        child: GestureDetector(
          onTap: changeColor,

          child: Container(width: 200, height: 200, color: colors[colorIndex]),
        ),
      ),
    );
  }
}
