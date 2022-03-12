import 'package:flutter/material.dart';
import 'package:modern_recipe_app/constants-and-themes/constants.dart';
import 'package:modern_recipe_app/constants-and-themes/themes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: AppConstants.bgColor,
          title: Center(
            child: Text(
                'Hello World',
              style: AppTheme.darkTextTheme.headline6,
            ),
          ),
        ),
      ),
      body: Container(),
    );
  }
}
