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
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            const BackgroundImage(),
            Positioned(
              top: 80,
              left: 100,
              child: Text(
                'Baabu Dishes',
                style: AppTheme.darkTextTheme.headline1,
              ),
            ),
            Positioned(
              top: 130,
              left: 100,
              child: Text(
                  'Best Dishes around the globe.',
                style: AppTheme.darkTextTheme.bodyText1,
              ),
            ),
            Positioned(
              top: 700,
              left: 100,
              right: 100,
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
      ),
    );
  }
}
