import 'package:flutter/material.dart';
import 'app/screens/screens.dart';
import 'core/theme/theme.dart';

void main() => runApp(const RecipeApp());

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppTheme.ktitle,
      home: HomeScreen(),
    );
  }
}
