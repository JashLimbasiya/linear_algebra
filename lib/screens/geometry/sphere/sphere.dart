import 'dart:math';

import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class Sphere extends StatefulWidget {
  const Sphere({super.key});

  @override
  State<Sphere> createState() => _SphereState();
}

TextEditingController circleradius = TextEditingController();

class _SphereState extends State<Sphere> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Sphere"),
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
                        surfacearea = double.parse(
                            (4 * pi * radius * radius).toStringAsFixed(2));
                        volume = double.parse(
                            (4 * pi * radius * radius * radius / 3)
                                .toStringAsFixed(2));
                        circleradius.clear();
                        _SphereState();
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
                    textRow("Surface Area = $surfacearea"),
                    textRow("Volume (V) = $volume"),
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
  double surfacearea = 0;
  double volume = 0;
}
