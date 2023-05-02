import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class Angle extends StatefulWidget {
  const Angle({super.key});

  @override
  State<Angle> createState() => _AngleState();
}

class _AngleState extends State<Angle> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Angle"),
        body: Container(
          decoration: background(),
          child: const Center(
              child: Text("Angle",
                  style: TextStyle(fontSize: 50, color: Colors.red))),
        ),
      ),
    );
  }
}
