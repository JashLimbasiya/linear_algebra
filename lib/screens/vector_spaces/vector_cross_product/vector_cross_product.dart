import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class VectorCrossProduct extends StatefulWidget {
  const VectorCrossProduct({super.key});

  @override
  State<VectorCrossProduct> createState() => _VectorCrossProductState();
}

class _VectorCrossProductState extends State<VectorCrossProduct> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Cross Product"),
        body: Container(
          decoration: background(),
          child: const Center(
              child: Text("Cross Product",
                  style: TextStyle(fontSize: 50, color: Colors.red))),
        ),
      ),
    );
  }
}
