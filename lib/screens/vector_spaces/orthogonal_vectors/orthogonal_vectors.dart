import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class OrthogonalVectors extends StatefulWidget {
  const OrthogonalVectors({super.key});

  @override
  State<OrthogonalVectors> createState() => _OrthogonalVectorsState();
}

class _OrthogonalVectorsState extends State<OrthogonalVectors> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Orthogonal Vectors"),
        body: Container(
          decoration: background(),
          child: const Center(
              child: Text("Orthogonal Vectors",
                  style: TextStyle(fontSize: 50, color: Colors.red))),
        ),
      ),
    );
  }
}
