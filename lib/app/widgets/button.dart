import 'package:flutter/material.dart';

import '../../core/theme/theme.dart';
import '../screens/home_screen.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
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
    );
  }
}
