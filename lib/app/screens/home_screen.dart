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
            colors: [
              Color.fromARGB(125, 125, 3, 7),
              Color.fromARGB(123, 73, 51, 22)
            ],
          ),
        ),
      ),
    );
  }
}
