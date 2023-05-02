import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class MatrixDeterminant extends StatefulWidget {
  const MatrixDeterminant({super.key});

  @override
  State<MatrixDeterminant> createState() => _MatrixDeterminantState();
}

class _MatrixDeterminantState extends State<MatrixDeterminant> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Matrix Determinant"),
        body: Container(
          decoration: background(),
          child: const Center(
              child: Text("Matrix Determinant",
                  style: TextStyle(fontSize: 50, color: Colors.red))),
        ),
      ),
    );
  }
}
