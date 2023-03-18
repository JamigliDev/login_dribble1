import 'package:flutter/material.dart';

class TextFieldC extends StatelessWidget {
  final Icon icon;
  final String hint;
  const TextFieldC({Key? key, required this.icon, required this.hint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(6.0)),
      child: TextField(
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.grey),
            icon: icon,
            border: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.grey.withOpacity(0.4), width: 1.0))),
      ),
    );
  }
}
