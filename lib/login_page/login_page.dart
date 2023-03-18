import 'package:flutter/material.dart';
import 'package:login_dribbble1/common_widgets/social_buttons.dart';
import 'package:login_dribbble1/common_widgets/text_field.dart';
import 'package:login_dribbble1/signup_page/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              Image.asset(
                "assets/images/img1.png",
                height: MediaQuery.of(context).size.width * 0.8,
              ),
              const SizedBox(
                height: 40.0,
              ),
              const Text(
                "Login",
                style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
              ),
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
              TextButton(
                onPressed: () {},
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Center(
                  child: Text("Or, login with...",
                      style: TextStyle(color: Colors.grey))),
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
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "New to LoginApp? ",
                    style: TextStyle(color: Colors.grey, fontSize: 16.0),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupPage()));
                    },
                    child: const Text(
                      "Register",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
