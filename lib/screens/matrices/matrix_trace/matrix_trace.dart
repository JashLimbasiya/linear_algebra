import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class MatrixTrace extends StatefulWidget {
  const MatrixTrace({super.key});

  @override
  State<MatrixTrace> createState() => _MatrixTraceState();
}

class _MatrixTraceState extends State<MatrixTrace> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Matrix Trace"),
        body: Container(
          decoration: background(),
          child: const Center(
              child: Text("Matrix Trace",
                  style: TextStyle(fontSize: 50, color: Colors.red))),
        ),
      ),
    );
  }
}
