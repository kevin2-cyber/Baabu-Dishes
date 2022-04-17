import 'package:flutter/material.dart';
import 'app/screens/home_screen.dart';
import 'core/theme/themes.dart';

void main() => runApp(const RecipeApp());

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.kthemeData,
      debugShowCheckedModeBanner: false,
      title: AppTheme.ktitle,
      home: const HomeScreen(),
    );
  }
}
