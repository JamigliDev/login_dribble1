import 'package:flutter/material.dart';

class InfoProfile extends StatelessWidget {
  final String top;
  final String bottom;
  const InfoProfile({super.key, required this.top, required this.bottom});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          top,
          style: const TextStyle(
              color: Colors.black, fontSize: 22.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          bottom,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }
}

class InforprofileCard extends StatelessWidget {
  final Icon icon;
  final String title;
  final String desc;
  final Color color;
  const InforprofileCard(
      {Key? key,
      required this.icon,
      required this.title,
      required this.desc,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10.0)),
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            icon,
            const SizedBox(
              height: 5.0,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 14.0),
            ),
            Text(
              desc,
              style:
                  const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const Icon(Icons.arrow_right_alt_outlined)
          ],
        ),
      ),
    );
  }
}

class ItemConfig extends StatelessWidget {
  final String title;
  const ItemConfig({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(color: Colors.black26, width: 0.5))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          const Icon(
            Icons.chevron_right,
            color: Colors.black,
            size: 32.0,
          )
        ],
      ),
    );
  }
}
