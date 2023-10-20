import 'package:flutter/material.dart';
import 'package:login_and_register/constants/constants.dart';

class NextButton extends StatefulWidget {
  final String text;
  const NextButton({super.key, required this.text});

  @override
  State<NextButton> createState() => _NextButtonState();
}

class _NextButtonState extends State<NextButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: const BoxDecoration(
          color: Constants.bgColorMain,
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.text,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 5,
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
