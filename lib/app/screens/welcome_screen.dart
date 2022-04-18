import 'package:flutter/material.dart';
import 'package:modern_recipe_app/app/screens/screens.dart';
import 'package:modern_recipe_app/core/theme/theme.dart';
import '../widgets/widgets.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundImage(),
          Positioned(
            top: 60,
            left: 150,
            child: Text(
              'Baabu Dishes',
              style: AppTheme.darkTextTheme.headline1,
            ),
          ),
          Positioned(
            top: 600,
            left: 150,
            right: 150,
            child: AppButton(
              bgColor: AppTheme.kdarkButtonColor,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
              text: 'Welcome',
            ),
          ),
        ],
      ),
    );
  }
}
