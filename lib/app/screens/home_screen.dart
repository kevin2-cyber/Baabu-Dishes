import 'package:flutter/material.dart';
import '../../core/theme/themes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            'Welcome to my kitchen of recipes',
            style: AppTheme.darkTextTheme.headline6,
          ),
        ),
      ),
      body: Container(),
    );
  }
}
