import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class TwoVariable extends StatefulWidget {
  const TwoVariable({super.key});

  @override
  State<TwoVariable> createState() => _TwoVariableState();
}

class _TwoVariableState extends State<TwoVariable> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Two Variable"),
        body: Container(
          decoration: background(),
          child: const Center(
              child: Text("Two Variable",
                  style: TextStyle(fontSize: 50, color: Colors.red))),
        ),
      ),
    );
  }
}
