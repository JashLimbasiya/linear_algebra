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
        appBar: AppBar(
          toolbarHeight: 75,
          shadowColor: Colors.red,
          backgroundColor: Colors.red,
          elevation: 10,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "Parallelogram",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/assets/images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
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
                    textbutton('Calculate', () {
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
                        oppositeangle = ((90 - minangle) * pi / 180);
                        length = (height / (cos(oppositeangle)));
                        perimeter = (2 * (length + base));
                        area = (base * height);
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
                    ansRow("Base (b) = ", base),
                    ansRow("Height (h) = ", height),
                    ansRow("Length (l) = ", length),
                    ansRow("Angle (α) = ", minangle),
                    ansRow("Angle (β) = ", maxangle),
                    ansRow("Perimeter (P) = ", perimeter),
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
  double angle = 0;
  double angletwo = 0;
  double minangle = 0;
  double maxangle = 0;
  double oppositeangle = 0;
  double length = 0;
  double perimeter = 0;
  double area = 0;
}
