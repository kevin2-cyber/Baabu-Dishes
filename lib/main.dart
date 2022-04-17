import 'package:flutter/material.dart';
import 'package:modern_recipe_app/constants-and-themes/themes.dart';
import 'package:modern_recipe_app/screens/home_screen.dart';

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
