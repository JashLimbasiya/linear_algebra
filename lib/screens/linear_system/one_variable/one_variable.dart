import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class OneVariable extends StatefulWidget {
  const OneVariable({super.key});

  @override
  State<OneVariable> createState() => _OneVariableState();
}

class _OneVariableState extends State<OneVariable> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("One Variable"),
        body: Container(
          decoration: background(),
          child: const Center(
              child: Text("One Variable",
                  style: TextStyle(fontSize: 50, color: Colors.red))),
        ),
      ),
    );
  }
}
