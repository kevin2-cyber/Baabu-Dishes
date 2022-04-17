import 'package:flutter/material.dart';
import '../../core/theme/themes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            colors: [Colors.purpleAccent, Colors.orangeAccent],
          ),
        ),
      ),
    );
  }
}
