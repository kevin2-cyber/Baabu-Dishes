import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SvgPicture.asset('assets/svg/diet.svg'),
          MaterialButton(
            onPressed: () {},
            child: Container(),
          ),
        ],
      ),
    );
  }
}
