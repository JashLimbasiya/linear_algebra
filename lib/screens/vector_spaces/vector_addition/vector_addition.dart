import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class VectorAddition extends StatefulWidget {
  const VectorAddition({super.key});

  @override
  State<VectorAddition> createState() => _VectorAdditionState();
}

class _VectorAdditionState extends State<VectorAddition> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Vector Addition"),
        body: Container(
          decoration: background(),
          child: const Center(
              child: Text("Vector Addition",
                  style: TextStyle(fontSize: 50, color: Colors.red))),
        ),
      ),
    );
  }
}
