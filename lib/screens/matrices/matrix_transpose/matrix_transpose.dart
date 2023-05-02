import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class MatrixTranspose extends StatefulWidget {
  const MatrixTranspose({super.key});

  @override
  State<MatrixTranspose> createState() => _MatrixTransposeState();
}

class _MatrixTransposeState extends State<MatrixTranspose> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Matrix Transpose"),
        body: Container(
          decoration: background(),
          child: const Center(
              child: Text("Matrix Transpose",
                  style: TextStyle(fontSize: 50, color: Colors.red))),
        ),
      ),
    );
  }
}
