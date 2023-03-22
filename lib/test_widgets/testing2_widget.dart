import 'package:flutter/material.dart';

import '../common_widgets/inforprofile.dart';

class Testing2Widget extends StatefulWidget {
  const Testing2Widget({Key? key}) : super(key: key);

  @override
  _Testing2WidgetState createState() => _Testing2WidgetState();
}

class _Testing2WidgetState extends State<Testing2Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(alignment: AlignmentDirectional.center, children: [
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.chevron_left,
                      color: Colors.black,
                    )),
              ),
              const Text(
                "Profile",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
            ]),
            const SizedBox(
              height: 20.0,
            ),
            CircleAvatar(
              radius: 44.0,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset(
                  "assets/images/man.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const Text(
              "Exodus Trivellan",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const Text(
              "Product Manager",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                InfoProfile(
                  bottom: 'Applied',
                  top: '28',
                ),
                InfoProfile(
                  bottom: 'Reviewed',
                  top: '78',
                ),
                InfoProfile(
                  bottom: 'Contacted',
                  top: '16',
                )
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Complete Profile",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: const [
                InforprofileCard(
                    icon: Icon(Icons.abc),
                    title: "Education",
                    desc: "03 Steps Left",
                    color: Colors.lightGreen),
                SizedBox(
                  width: 10.0,
                ),
                InforprofileCard(
                    icon: Icon(Icons.abc),
                    title: "Education",
                    desc: "03 Steps Left",
                    color: Colors.deepPurple)
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            const SizedBox(
              height: 20.0,
            ),
            ItemConfig(title: "Account Setting"),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              width: double.infinity,
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Get Pro",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "Buy Pro Account",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                        ),
                      )
                    ],
                  ),
                  FilledButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Colors.deepOrangeAccent),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ))),
                      onPressed: () {},
                      child: const Text(
                        "Buy Now",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            color: Colors.black),
                      ))
                  /*TextButton(
                      onPressed: () {},
                      child: Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.pinkAccent),
                          child: const Text(
                            "Buy Now",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: Colors.black),
                          )))*/
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
