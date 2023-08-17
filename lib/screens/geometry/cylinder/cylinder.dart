import 'dart:math';

import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class Cylinder extends StatefulWidget {
  const Cylinder({super.key});

  @override
  State<Cylinder> createState() => _CylinderState();
}

TextEditingController cylinderradius = TextEditingController();
TextEditingController cylinderheight = TextEditingController();

class _CylinderState extends State<Cylinder> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Cylinder"),
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
                      controller: cylinderradius,
                      decoration: const InputDecoration(
                        hintText: 'Enter Radius ',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: cylinderheight,
                      decoration: const InputDecoration(
                        hintText: 'Enter Height ',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 25),
                    whiteTextButton('Calculate', () {
                      setState(() {
                        radius = double.parse(cylinderradius.text);
                        height = double.parse(cylinderheight.text);
                        curvedsurfacearea = double.parse(
                            (2 * pi * radius * height).toStringAsFixed(2));
                        totalsurfacearea = double.parse(
                            (2 * pi * radius * (radius + height))
                                .toStringAsFixed(2));
                        volume = double.parse(
                            (pi * radius * radius * height).toStringAsFixed(2));
                        cylinderradius.clear();
                        cylinderheight.clear();
                        _CylinderState();
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
                    textRow("Height (h) = $height"),
                    textRow("Curved Surface Area = $curvedsurfacearea"),
                    textRow("Total Surface Area (A) = $totalsurfacearea"),
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
  double height = 0;
  double curvedsurfacearea = 0;
  double totalsurfacearea = 0;
  double volume = 0;
}
