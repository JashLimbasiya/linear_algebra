import 'dart:math';

import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class EquilateralTriangle extends StatefulWidget {
  const EquilateralTriangle({super.key});

  @override
  State<EquilateralTriangle> createState() => _EquilateralTriangleState();
}

TextEditingController equilateraltriangleside = TextEditingController();

class _EquilateralTriangleState extends State<EquilateralTriangle> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Equilateral Triangle"),
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
                      controller: equilateraltriangleside,
                      decoration: const InputDecoration(
                        hintText: 'Enter Side ',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 25),
                    whiteTextButton('Calculate', () {
                      setState(() {
                        side = double.parse(equilateraltriangleside.text);
                        perimeter = (3 * side);
                        area = (sqrt(3) * side * side / 4);
                        equilateraltriangleside.clear();
                        _EquilateralTriangleState();
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
                    ansRow("Side = ", side),
                    ansRow("Perimeter = ", perimeter),
                    ansRow("Area (A) = ", area),
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

  double side = 0;
  double perimeter = 0;
  double area = 0;
}
