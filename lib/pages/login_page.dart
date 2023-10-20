import 'package:flutter/material.dart';
import 'package:login_and_register/pages/signup_page.dart';
import 'package:login_and_register/widgets/next_button.dart';
import 'package:login_and_register/widgets/text_form_field_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/loginImg.png'),
            const Text(
              'Welcome back',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            const Text('sign in to access your account',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
            const SizedBox(
              height: 20,
            ),
            const TextFormFieldWidget(
                text: 'Enter your email', icon: Icon(Icons.mail)),
            const SizedBox(
              height: 10,
            ),
            const TextFormFieldWidget(text: 'Password', icon: Icon(Icons.lock)),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                const Text('Remember me'),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 5,
                ),
                TextButton(
                    onPressed: () {}, child: const Text('Forgot Password ?')),
              ],
            ),
            const Spacer(),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SignupPage()));
                },
                child: const NextButton(text: 'Next')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('New Member ?'),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SignupPage()));
                    },
                    child: const Text('Register now'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
