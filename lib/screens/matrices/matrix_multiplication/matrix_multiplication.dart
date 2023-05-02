import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class MatrixMultiplication extends StatefulWidget {
  const MatrixMultiplication({super.key});

  @override
  State<MatrixMultiplication> createState() => _MatrixMultiplicationState();
}

class _MatrixMultiplicationState extends State<MatrixMultiplication> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Matrix Multiplication"),
        body: Container(
          decoration: background(),
          child: const Center(
              child: Text("Matrix Multiplication",
                  style: TextStyle(fontSize: 50, color: Colors.red))),
        ),
      ),
    );
  }
}
