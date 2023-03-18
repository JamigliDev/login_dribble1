import 'package:flutter/material.dart';

import '../common_widgets/social_buttons.dart';
import '../common_widgets/text_field.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child: Image.asset(
                "assets/images/img2.png",
                height: MediaQuery.of(context).size.width * 0.8,
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            const Text(
              "Sign up",
              style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const SocialButtons(
                      assetName: "assets/images/google.png",
                    )),
                TextButton(
                    onPressed: () {},
                    child: const SocialButtons(
                      assetName: "assets/images/facebook.png",
                    )),
                TextButton(
                    onPressed: () {},
                    child: const SocialButtons(
                      assetName: "assets/images/apple.png",
                    ))
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Center(
                child: Text("Or, register with email...",
                    style: TextStyle(color: Colors.grey))),
            const SizedBox(
              height: 20.0,
            ),
            TextFieldC(
              icon: const Icon(Icons.email),
              hint: "Email ID",
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFieldC(
              icon: const Icon(Icons.lock),
              hint: "Password",
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFieldC(
              icon: const Icon(Icons.person),
              hint: "Full name",
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFieldC(
              icon: const Icon(Icons.store),
              hint: "Company name",
            ),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      )),
    );
  }
}
