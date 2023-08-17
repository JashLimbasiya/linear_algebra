import 'dart:math';

import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class Rectangle extends StatefulWidget {
  const Rectangle({super.key});

  @override
  State<Rectangle> createState() => _RectangleState();
}

TextEditingController rectanglelength = TextEditingController();
TextEditingController rectanglewidth = TextEditingController();

class _RectangleState extends State<Rectangle> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Rectangle"),
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
                      controller: rectanglelength,
                      decoration: const InputDecoration(
                        hintText: 'Enter Length ',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: rectanglewidth,
                      decoration: const InputDecoration(
                        hintText: 'Enter Width ',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 25),
                    whiteTextButton('Calculate', () {
                      setState(() {
                        length = double.parse(rectanglelength.text);
                        width = double.parse(rectanglewidth.text);
                        diagonal = double.parse(
                            (sqrt((length * length) + (width * width)))
                                .toStringAsFixed(2));
                        perimeter = double.parse(
                            (2 * (length + width)).toStringAsFixed(2));
                        area =
                            double.parse((length * width).toStringAsFixed(2));
                        rectanglelength.clear();
                        rectanglewidth.clear();
                        _RectangleState();
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
                    textRow("Width (w) = $width"),
                    textRow("Diagonal = $diagonal"),
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

  double length = 0;
  double width = 0;
  double diagonal = 0;
  double perimeter = 0;
  double area = 0;
}
