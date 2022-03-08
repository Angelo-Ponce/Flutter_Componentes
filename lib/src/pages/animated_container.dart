import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({Key? key}) : super(key: key);

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);
  Color _color = Colors.pink;

  double _height = 50.0;
  double _width = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
          height: _height,
          width: _width,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.play_arrow_rounded),
          onPressed: _cambiarforma),
    );
  }

  void _cambiarforma() {
    final random = Random();

    setState(() {
      _height = random.nextInt(300).toDouble();
      _width = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
      _borderRadius = BorderRadius.circular(random.nextInt(255).toDouble());
    });
  }
}
