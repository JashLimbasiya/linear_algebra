import 'dart:math';

import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class IsoscelesTriangle extends StatefulWidget {
  const IsoscelesTriangle({super.key});

  @override
  State<IsoscelesTriangle> createState() => _IsoscelesTriangleState();
}

TextEditingController isoscelestrianglebase = TextEditingController();
TextEditingController isoscelestriangleheight = TextEditingController();

class _IsoscelesTriangleState extends State<IsoscelesTriangle> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Isosceles Triangle"),
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
                      controller: isoscelestrianglebase,
                      decoration: const InputDecoration(
                        hintText: 'Enter Base ',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: isoscelestriangleheight,
                      decoration: const InputDecoration(
                        hintText: 'Enter Height ',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 25),
                    textbutton('Calculate', () {
                      setState(() {
                        base = double.parse(isoscelestrianglebase.text);
                        height = double.parse(isoscelestriangleheight.text);
                        equalside = sqrt((height * height) + (base * base / 4));
                        perimeter = (base + (2 * equalside));
                        area = (base * height / 2);
                        isoscelestrianglebase.clear();
                        isoscelestriangleheight.clear();
                        _IsoscelesTriangleState();
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
                    ansRow("Base (b) = ", base),
                    ansRow("Height (h) = ", height),
                    ansRow("Equal Sides = ", equalside),
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

  double base = 0;
  double height = 0;
  double equalside = 0;
  double perimeter = 0;
  double area = 0;
}
