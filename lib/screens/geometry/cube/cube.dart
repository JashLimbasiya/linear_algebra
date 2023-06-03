import 'dart:math';

import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class Cube extends StatefulWidget {
  const Cube({super.key});

  @override
  State<Cube> createState() => _CubeState();
}

TextEditingController cubelength = TextEditingController();

class _CubeState extends State<Cube> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Cube"),
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
                      controller: cubelength,
                      decoration: const InputDecoration(
                        hintText: 'Enter Length ',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 25),
                    whiteTextButton('Calculate', () {
                      setState(() {
                        length = double.parse(cubelength.text);
                        lateralsurfacearea = double.parse(
                            (4 * length * length).toStringAsFixed(2));
                        totalsurfacearea = double.parse(
                            (6 * length * length).toStringAsFixed(2));
                        volume = double.parse(
                            (length * length * length).toStringAsFixed(2));
                        diagonalface =
                            double.parse((sqrt(2) * length).toStringAsFixed(2));
                        diagonal =
                            double.parse((sqrt(3) * length).toStringAsFixed(2));
                        cubelength.clear();
                        _CubeState();
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
                    ansRow("Length (l) = $length"),
                    ansRow("Lateral Surface Area = $lateralsurfacearea"),
                    ansRow("Total Surface Area = $totalsurfacearea"),
                    ansRow("Volume (V) = $volume"),
                    ansRow("Diagonal of Face of the Cube = $diagonalface"),
                    ansRow("Diagonal of Cube = $diagonal"),
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

  double length = 0;
  double lateralsurfacearea = 0;
  double totalsurfacearea = 0;
  double volume = 0;
  double diagonalface = 0;
  double diagonal = 0;
}
