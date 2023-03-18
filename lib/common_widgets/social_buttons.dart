import 'package:flutter/material.dart';

class SocialButtons extends StatelessWidget {
  final String assetName;
  const SocialButtons({Key? key, required this.assetName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: Colors.grey, width: 1.0)),
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
      child: Center(
        child: Image.asset(
          assetName,
          height: 36.0,
        ),
      ),
    );
  }
}
