import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome To Home',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset('assets/images/welcome.png'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Currently The Next Part of Home Activity &\n Fragementation is under development.\n The upcoming Part 2 is coming Soon........',
                style: TextStyle(fontSize: 14),
              )
            ],
          ),
        ),
      ),
    );
  }
}
