import 'dart:math';

import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class Rhombus extends StatefulWidget {
  const Rhombus({super.key});

  @override
  State<Rhombus> createState() => _RhombusState();
}

TextEditingController rhombusdiagonalone = TextEditingController();
TextEditingController rhombusdiagonaltwo = TextEditingController();

class _RhombusState extends State<Rhombus> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Rhombus"),
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
                      controller: rhombusdiagonalone,
                      decoration: const InputDecoration(
                        hintText: 'Enter First Diagonal ',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: rhombusdiagonaltwo,
                      decoration: const InputDecoration(
                        hintText: 'Enter Second Diagonal ',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 25),
                    whiteTextButton('Calculate', () {
                      setState(() {
                        diagonalone = double.parse(rhombusdiagonalone.text);
                        diagonaltwo = double.parse(rhombusdiagonaltwo.text);
                        length = ((sqrt((diagonalone * diagonalone) +
                                (diagonaltwo * diagonaltwo))) /
                            2);
                        perimeter = (4 * length);
                        area = (diagonalone * diagonaltwo / 2);
                        rhombusdiagonalone.clear();
                        rhombusdiagonaltwo.clear();
                        _RhombusState();
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
                    ansRow("Diagonal One (d1) = ", diagonalone),
                    ansRow("Diagonal Two (d2) = ", diagonaltwo),
                    ansRow("Length (l) = ", length),
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

  double diagonalone = 0;
  double diagonaltwo = 0;
  double length = 0;
  double perimeter = 0;
  double area = 0;
}
