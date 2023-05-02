import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class MatrixSubtraction extends StatefulWidget {
  const MatrixSubtraction({super.key});

  @override
  State<MatrixSubtraction> createState() => _MatrixSubtractionState();
}

class _MatrixSubtractionState extends State<MatrixSubtraction> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Matrix Subtraction"),
        body: Container(
          decoration: background(),
          child: const Center(
              child: Text("Matrix Subtraction",
                  style: TextStyle(fontSize: 50, color: Colors.red))),
        ),
      ),
    );
  }
}
