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
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            colors: [
              AppTheme.kdarkBgColor,
              AppTheme.kbgColor,
            ],
          ),
        ),
        child: Stack(
          children: [
            SvgPicture.asset('assets/svg/chef.svg'),
            Positioned(
              top: 700,
              left: 100,
              right: 100,
              child: AppButton(
                bgColor: AppTheme.kdarkButtonColor,
                onPressed: () {
                  Navigator.pop(context);
                },
                text: 'Back to Home',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
