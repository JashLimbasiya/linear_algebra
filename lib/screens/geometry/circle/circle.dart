import 'dart:math';

import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class Circle extends StatefulWidget {
  const Circle({super.key});

  @override
  State<Circle> createState() => _CircleState();
}

TextEditingController circleradius = TextEditingController();

class _CircleState extends State<Circle> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Circle"),
        body: Container(
          decoration: background(),
          child: ListView(
            padding:
                const EdgeInsets.only(top: 25, right: 10, bottom: 10, left: 10),
            children: [
              Card(
                shadowColor: Colors.red,
                elevation: 10,
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: circleradius,
                      decoration: const InputDecoration(
                        hintText: 'Enter Radius ',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 25),
                    whiteTextButton('Calculate', () {
                      setState(() {
                        radius = double.parse(circleradius.text);
                        perimeter =
                            double.parse((2 * pi * radius).toStringAsFixed(2));
                        area = double.parse(
                            (pi * radius * radius).toStringAsFixed(2));
                        circleradius.clear();
                        _CircleState();
                      });
                    }),
                    const SizedBox(height: 25),
                    const Divider(
                      color: Color.fromARGB(70, 200, 0, 0),
                      thickness: 3,
                      indent: 5,
                      endIndent: 5,
                    ),
                    const SizedBox(height: 10),
                    textRow("Radius (r) = $radius"),
                    textRow("Perimeter = $perimeter"),
                    textRow("Area (A) = $area"),
                    const SizedBox(height: 20),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  double radius = 0;
  double perimeter = 0;
  double area = 0;
}
