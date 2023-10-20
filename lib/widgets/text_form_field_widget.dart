import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  final String text;
  final Icon icon;
  const TextFormFieldWidget(
      {super.key, required this.text, required this.icon});

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          suffixIcon: widget.icon,
          hintText: widget.text,
          filled: true,
          fillColor: Colors.black.withOpacity(0.1),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(14))),
    );
  }
}
