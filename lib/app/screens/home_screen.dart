import 'package:flutter/material.dart';
import '../../core/theme/themes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          elevation: 0,
          backgroundColor: AppTheme.kdarkAppBarColor,
          title: Center(
            child: Text(
              'Welcome to my kitchen of recipes',
              style: AppTheme.darkTextTheme.headline6,
            ),
          ),
        ),
      ),
      body: Container(),
    );
  }
}
