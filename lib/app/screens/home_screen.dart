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
              Color.fromARGB(177, 176, 250, 4),
              Color.fromARGB(122, 254, 144, 0)
            ],
          ),
        ),
      ),
    );
  }
}
