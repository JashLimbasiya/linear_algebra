import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class ThreeVariable extends StatefulWidget {
  const ThreeVariable({super.key});

  @override
  State<ThreeVariable> createState() => _ThreeVariableState();
}

class _ThreeVariableState extends State<ThreeVariable> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Three Variable"),
        body: Container(
          decoration: background(),
          child: const Center(
              child: Text("Three Variable",
                  style: TextStyle(fontSize: 50, color: Colors.red))),
        ),
      ),
    );
  }
}
