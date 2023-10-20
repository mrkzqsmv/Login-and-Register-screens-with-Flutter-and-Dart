import 'package:flutter/material.dart';
import 'package:login_and_register/constants/constants.dart';
import 'package:login_and_register/pages/third_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bgColorSecond,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/bicyle.png'),
            const Text(
              'Explore the \nworld easily',
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const Text(
              'To your desire',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    createRectangle(Colors.black),
                    const SizedBox(
                      width: 4,
                    ),
                    createRectangle(Colors.white),
                    const SizedBox(
                      width: 4,
                    ),
                    createRectangle(Colors.white),
                  ],
                ),
                arrowBox()
              ],
            )
          ],
        ),
      ),
    );
  }

  InkWell arrowBox() {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const ThirdPage()));
      },
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
        ),
        width: 50,
        height: 50,
        child: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
      ),
    );
  }

  createRectangle(Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      width: 16,
      height: 6,
    );
  }
}
