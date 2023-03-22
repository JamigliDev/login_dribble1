import 'package:flutter/material.dart';

class TestingWidget extends StatefulWidget {
  const TestingWidget({Key? key}) : super(key: key);

  @override
  _TestingWidgetState createState() => _TestingWidgetState();
}

class _TestingWidgetState extends State<TestingWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 80.0,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage("assets/images/google.png"),
                    ),
                    Positioned(
                      bottom: -20.0,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20.0),
                        height: 40.0,
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2.0),
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Text(
                          "235 Followers",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20.0,
                    mainAxisSpacing: 20.0),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return AspectRatio(
                    aspectRatio: index % 2 == 0 ? 0.2 : 0.5,
                    child: Container(
                      color: Colors.red,
                    ),
                  );
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
