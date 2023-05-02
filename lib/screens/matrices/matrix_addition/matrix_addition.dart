import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class MatrixAddition extends StatefulWidget {
  const MatrixAddition({super.key});

  @override
  State<MatrixAddition> createState() => _MatrixAdditionState();
}

class _MatrixAdditionState extends State<MatrixAddition> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Matrix Addition"),
        body: Container(
          decoration: background(),
          child: const Center(
              child: Text("Matrix Addition",
                  style: TextStyle(fontSize: 50, color: Colors.red))),
        ),
      ),
    );
  }
}
