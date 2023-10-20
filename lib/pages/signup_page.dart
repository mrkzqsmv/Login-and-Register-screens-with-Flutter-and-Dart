import 'package:flutter/material.dart';
import 'package:login_and_register/pages/login_page.dart';
import 'package:login_and_register/pages/verify_page.dart';
import 'package:login_and_register/widgets/next_button.dart';
import 'package:login_and_register/widgets/text_form_field_widget.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Image.asset('assets/images/loginImg.png'),
            const Text(
              'Get Started',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w400),
            ),
            const Text(
              'by creating a free account.',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(
              height: 50,
            ),
            const TextFormFieldWidget(
                text: 'Full name', icon: Icon(Icons.person)),
            const SizedBox(
              height: 10,
            ),
            const TextFormFieldWidget(
                text: 'Valid email', icon: Icon(Icons.email)),
            const SizedBox(
              height: 10,
            ),
            const TextFormFieldWidget(
                text: 'Phone number', icon: Icon(Icons.phone)),
            const SizedBox(
              height: 10,
            ),
            const TextFormFieldWidget(
                text: 'Strong Password', icon: Icon(Icons.password)),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = !isChecked;
                      });
                    }),
                const Text(
                  'By checking the box you agree to our terms and Conditions',
                  style: TextStyle(fontSize: 9),
                ),
              ],
            ),
            const Spacer(),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const VerifyPage()));
                },
                child: const NextButton(text: 'Next')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already a member ?'),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                    },
                    child: const Text('Log in'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
