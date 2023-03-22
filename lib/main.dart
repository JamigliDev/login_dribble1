import 'package:flutter/material.dart';
import 'package:login_dribbble1/login_page/login_page.dart';
import 'package:login_dribbble1/test_widgets/testing2_widget.dart';
import 'package:login_dribbble1/test_widgets/testing_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, brightness: Brightness.dark),
      home: const Testing2Widget(),
    );
  }
}
