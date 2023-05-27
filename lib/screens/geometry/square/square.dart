import 'dart:math';

import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class Square extends StatefulWidget {
  const Square({super.key});

  @override
  State<Square> createState() => _SquareState();
}

TextEditingController squarelength = TextEditingController();

class _SquareState extends State<Square> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Square"),
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
                      controller: squarelength,
                      decoration: const InputDecoration(
                        hintText: 'Enter Length ',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 25),
                    whiteTextButton('Calculate', () {
                      setState(() {
                        length = double.parse(squarelength.text);
                        diagonal = sqrt(2 * (length * length));
                        perimeter = (4 * length);
                        area = (length * length);
                        squarelength.clear();
                        _SquareState();
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
                    ansRow("Diagonal = $diagonal"),
                    ansRow("Perimeter = $perimeter"),
                    ansRow("Area (A) = $area"),
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
  double diagonal = 0;
  double perimeter = 0;
  double area = 0;
}
