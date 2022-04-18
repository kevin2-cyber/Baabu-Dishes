import 'package:flutter/material.dart';
import '../../core/theme/theme.dart';

class AppButton extends StatelessWidget {
  final Color bgColor;
  final Function() onPressed;
  final String text;

  const AppButton({
    Key? key,
    required this.bgColor,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      minWidth: 200,
      shape: const StadiumBorder(),
      color: bgColor,
      onPressed: onPressed,
      child: Text(
        text,
        style: AppTheme.darkTextTheme.bodyText1,
      ),
    );
  }
}
