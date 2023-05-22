import 'dart:math';

import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class Cone extends StatefulWidget {
  const Cone({super.key});

  @override
  State<Cone> createState() => _ConeState();
}

TextEditingController coneradius = TextEditingController();
TextEditingController coneheight = TextEditingController();

class _ConeState extends State<Cone> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Cone"),
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
                      controller: coneradius,
                      decoration: const InputDecoration(
                        hintText: 'Enter Radius ',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: coneheight,
                      decoration: const InputDecoration(
                        hintText: 'Enter Height ',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 25),
                    whiteTextButton('Calculate', () {
                      setState(() {
                        radius = double.parse(coneradius.text);
                        height = double.parse(coneheight.text);
                        slantheight =
                            sqrt(((radius * radius) + (height * height)));
                        surfacearea = (pi * radius * (radius + slantheight));
                        volume = ((1 / 3) * pi * radius * radius * height);
                        coneradius.clear();
                        coneheight.clear();
                        _ConeState();
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
                    ansRow("Radius (r) = ", radius),
                    ansRow("Height (h) = ", height),
                    ansRow("Slant Height (l) = ", slantheight),
                    ansRow("Surface Area (A) = ", surfacearea),
                    ansRow("Volume (V) = ", volume),
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
  double slantheight = 0;
  double surfacearea = 0;
  double volume = 0;
}
