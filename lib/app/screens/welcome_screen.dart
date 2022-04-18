import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/sandwich.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            MaterialButton(
              onPressed: () {},
              color: const Color.fromARGB(255, 141, 49, 42),
            ),
          ],
        ),
      ),
    );
  }
}
