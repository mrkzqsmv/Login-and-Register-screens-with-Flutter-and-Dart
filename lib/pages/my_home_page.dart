import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login_and_register/constants/constants.dart';
import 'package:login_and_register/pages/second_page.dart';
import 'package:svg_flutter/svg.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const SecondPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bgColorMain,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/sar.png'),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Explora',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                width: 5,
              ),
              SvgPicture.asset('assets/images/dalga.svg'),
            ],
          )
        ],
      ),
    );
  }
}
