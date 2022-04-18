import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modern_recipe_app/app/widgets/button.dart';
import '../../core/theme/theme.dart';

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
              Color.fromARGB(153, 2, 9, 214),
              Color.fromARGB(173, 18, 1, 143)
            ],
          ),
        ),
        child: Stack(
          children: [
            SvgPicture.asset('assets/svg/chef.svg'),
            Positioned(
              top: 600,
              left: 150,
              right: 150,
              child: AppButton(
                bgColor: AppTheme.kdarkButtonColor,
                onPressed: () {},
                text: 'Back to Home',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
