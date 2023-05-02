import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class VectorScalarProduct extends StatefulWidget {
  const VectorScalarProduct({super.key});

  @override
  State<VectorScalarProduct> createState() => _VectorScalarProductState();
}

class _VectorScalarProductState extends State<VectorScalarProduct> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Scalar Product"),
        body: Container(
          decoration: background(),
          child: const Center(
              child: Text("Scalar Product",
                  style: TextStyle(fontSize: 50, color: Colors.red))),
        ),
      ),
    );
  }
}
