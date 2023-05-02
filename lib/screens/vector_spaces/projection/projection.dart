import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class Projection extends StatefulWidget {
  const Projection({super.key});

  @override
  State<Projection> createState() => _ProjectionState();
}

class _ProjectionState extends State<Projection> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Projection"),
        body: Container(
          decoration: background(),
          child: const Center(
              child: Text("Projection",
                  style: TextStyle(fontSize: 50, color: Colors.red))),
        ),
      ),
    );
  }
}
