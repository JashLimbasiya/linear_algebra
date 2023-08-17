import 'dart:math';

import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class Cuboid extends StatefulWidget {
  const Cuboid({super.key});

  @override
  State<Cuboid> createState() => _CuboidState();
}

TextEditingController cuboidlength = TextEditingController();
TextEditingController cuboidwidth = TextEditingController();
TextEditingController cuboidheight = TextEditingController();

class _CuboidState extends State<Cuboid> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Cuboid"),
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
                      controller: cuboidlength,
                      decoration: const InputDecoration(
                        hintText: 'Enter Length ',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: cuboidwidth,
                      decoration: const InputDecoration(
                        hintText: 'Enter Width ',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: cuboidheight,
                      decoration: const InputDecoration(
                        hintText: 'Enter Height ',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 25),
                    whiteTextButton('Calculate', () {
                      setState(() {
                        length = double.parse(cuboidlength.text);
                        width = double.parse(cuboidwidth.text);
                        height = double.parse(cuboidheight.text);
                        volume = double.parse(
                            (length * width * height).toStringAsFixed(2));
                        lateralsurfacearea = double.parse(
                            (2 * height * (length + width)).toStringAsFixed(2));
                        totalsurfacearea = double.parse((2 *
                                ((length * width) +
                                    (width * height) +
                                    (height * length)))
                            .toStringAsFixed(2));
                        perimeter = double.parse(
                            (4 * (length + width + height)).toStringAsFixed(2));
                        diagonal = double.parse((sqrt((length * length) +
                                (width * width) +
                                (height * height)))
                            .toStringAsFixed(2));
                        cuboidlength.clear();
                        cuboidwidth.clear();
                        cuboidheight.clear();
                        _CuboidState();
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
                    textRow("Length (l) = $length"),
                    textRow("Width (b) = $width"),
                    textRow("Height (h) = $height"),
                    textRow("Volume = $volume"),
                    textRow("Lateral Surface Area = $lateralsurfacearea"),
                    textRow("Total Surface Area = $totalsurfacearea"),
                    textRow("Perimeter = $perimeter"),
                    textRow("Diagonal = $diagonal"),
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
  double width = 0;
  double height = 0;
  double lateralsurfacearea = 0;
  double totalsurfacearea = 0;
  double perimeter = 0;
  double diagonal = 0;
  double volume = 0;
}
