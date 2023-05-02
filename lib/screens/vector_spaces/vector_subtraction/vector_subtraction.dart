import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class VectorSubtraction extends StatefulWidget {
  const VectorSubtraction({super.key});

  @override
  State<VectorSubtraction> createState() => _VectorSubtractionState();
}

class _VectorSubtractionState extends State<VectorSubtraction> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Vector Subtraction"),
        body: Container(
          decoration: background(),
          child: const Center(
              child: Text("Vector Subtraction",
                  style: TextStyle(fontSize: 50, color: Colors.red))),
        ),
      ),
    );
  }
}
