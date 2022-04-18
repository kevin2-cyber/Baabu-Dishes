import 'package:flutter/material.dart';
import 'package:modern_recipe_app/app/screens/home_screen.dart';
import 'package:modern_recipe_app/app/widgets/background_image.dart';
import 'package:modern_recipe_app/core/theme/theme.dart';

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
            child: MaterialButton(
              height: 50,
              minWidth: 200,
              shape: const StadiumBorder(),
              color: const Color.fromARGB(255, 4, 29, 50),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              child: Text(
                'Welcome',
                style: AppTheme.darkTextTheme.bodyText1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
