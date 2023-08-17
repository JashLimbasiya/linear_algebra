import 'dart:math';

import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class Parallelogram extends StatefulWidget {
  const Parallelogram({super.key});

  @override
  State<Parallelogram> createState() => _ParallelogramState();
}

TextEditingController parallelogrambase = TextEditingController();
TextEditingController parallelogramheight = TextEditingController();
TextEditingController parallelogramangle = TextEditingController();

class _ParallelogramState extends State<Parallelogram> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Parallelogram"),
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
                      controller: parallelogrambase,
                      decoration: const InputDecoration(
                        hintText: 'Enter Base ',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: parallelogramheight,
                      decoration: const InputDecoration(
                        hintText: 'Enter Height ',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: parallelogramangle,
                      decoration: const InputDecoration(
                        hintText: 'Enter Angle ',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 25),
                    whiteTextButton('Calculate', () {
                      setState(() {
                        base = double.parse(parallelogrambase.text);
                        height = double.parse(parallelogramheight.text);
                        angle = double.parse(parallelogramangle.text);
                        while (angle > 180) {
                          angle = angle - 180;
                        }
                        angletwo = 180 - angle;
                        minangle = min(angle, angletwo);
                        maxangle = max(angle, angletwo);
                        oppositeangle = double.parse(
                            ((90 - minangle) * pi / 180).toStringAsFixed(2));
                        length = double.parse(
                            (height / (cos(oppositeangle))).toStringAsFixed(2));
                        perimeter = double.parse(
                            (2 * (length + base)).toStringAsFixed(2));
                        area = double.parse((base * height).toStringAsFixed(2));
                        parallelogrambase.clear();
                        parallelogramheight.clear();
                        parallelogramangle.clear();
                        _ParallelogramState();
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
                    textRow("Base (b) = $base"),
                    textRow("Height (h) = $height"),
                    textRow("Length (l) = $length"),
                    textRow("Angle (α) = $minangle°"),
                    textRow("Angle (β) = $maxangle°"),
                    textRow("Perimeter (P) = $perimeter"),
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

  double base = 0;
  double height = 0;
  double angle = 0;
  double angletwo = 0;
  double minangle = 0;
  double maxangle = 0;
  double oppositeangle = 0;
  double length = 0;
  double perimeter = 0;
  double area = 0;
}
