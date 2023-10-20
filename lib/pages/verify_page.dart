import 'package:flutter/material.dart';
import 'package:login_and_register/pages/welcome_page.dart';
import 'package:login_and_register/widgets/next_button.dart';
import 'package:pinput/pinput.dart';

class VerifyPage extends StatefulWidget {
  const VerifyPage({super.key});

  @override
  State<VerifyPage> createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Almost there ',
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Please enter the 6-digit code sent to your\nemail hemmyhtec@gmail.com for verification.',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Pinput(
                onCompleted: (pin) {
                  debugPrint(pin);
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Spacer(),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const WelcomePage()));
                },
                child: const NextButton(text: 'Verify')),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Didn\'t receive any code?',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Resend Again',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            arrowBox(),
          ],
        ),
      ),
    );
  }

  InkWell arrowBox() {
    return InkWell(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
        ),
        width: 50,
        height: 50,
        child: const Center(
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
