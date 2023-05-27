import 'dart:math';

import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class Angle extends StatefulWidget {
  const Angle({super.key});

  @override
  State<Angle> createState() => _AngleState();
}

TextEditingController vectora1 = TextEditingController();
TextEditingController vectora2 = TextEditingController();
TextEditingController vectora3 = TextEditingController();
TextEditingController vectorb1 = TextEditingController();
TextEditingController vectorb2 = TextEditingController();
TextEditingController vectorb3 = TextEditingController();

class _AngleState extends State<Angle> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Angle"),
        body: Container(
          decoration: background(),
          child: ListView(
            padding:
                const EdgeInsets.only(top: 25, right: 10, bottom: 10, left: 10),
            children: [
              Card(
                  shadowColor: Colors.red, elevation: 10, child: vectorColumn())
            ],
          ),
        ),
      ),
    );
  }

  vectorColumn() {
    switch (dimflag) {
      case 1:
        return Column(
          children: [
            const SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                "Select Dimension : ",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 5),
              redTextButton("1D", () {
                setState(() {
                  dimflag = 1;
                  angle = 0;
                  _AngleState();
                });
              }),
              const SizedBox(width: 10),
              whiteTextButton("2D", () {
                setState(() {
                  dimflag = 2;
                  angle = 0;
                  _AngleState();
                });
              }),
              const SizedBox(width: 10),
              whiteTextButton("3D", () {
                setState(() {
                  dimflag = 3;
                  angle = 0;
                  _AngleState();
                });
              })
            ]),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Vector A : ",
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(width: 15),
                SizedBox(
                  child: texInput(100, 15, vectora1, "a1"),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Vector B : ",
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(width: 15),
                SizedBox(
                  child: texInput(100, 15, vectorb1, "b1"),
                )
              ],
            ),
            const SizedBox(height: 25),
            whiteTextButton('Calculate', () {
              setState(() {
                a1 = double.parse(vectora1.text);
                b1 = double.parse(vectorb1.text);
                dot = (a1 * b1);
                magnitudeA = a1;
                magnitudeB = b1;
                angle =
                    (((acos((dot / (magnitudeA * magnitudeB)))) * 180) / pi);
                vectora1.clear();
                vectorb1.clear();
                _AngleState();
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
            ansRow("Angle = $angle°"),
            const SizedBox(height: 20),
          ],
        );

      case 2:
        return Column(
          children: [
            const SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                "Select Dimension : ",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 5),
              whiteTextButton("1D", () {
                setState(() {
                  dimflag = 1;
                  angle = 0;
                  _AngleState();
                });
              }),
              const SizedBox(width: 10),
              redTextButton("2D", () {
                setState(() {
                  dimflag = 2;
                  angle = 0;
                  _AngleState();
                });
              }),
              const SizedBox(width: 10),
              whiteTextButton("3D", () {
                setState(() {
                  dimflag = 3;
                  angle = 0;
                  _AngleState();
                });
              })
            ]),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Vector A : ",
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(width: 15),
                SizedBox(
                  child: texInput(80, 15, vectora1, "a1"),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  child: texInput(80, 15, vectora2, "a2"),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Vector B : ",
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(width: 15),
                SizedBox(
                  child: texInput(80, 15, vectorb1, "b1"),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  child: texInput(80, 15, vectorb2, "b2"),
                ),
              ],
            ),
            const SizedBox(height: 25),
            whiteTextButton('Calculate', () {
              setState(() {
                a1 = double.parse(vectora1.text);
                a2 = double.parse(vectora2.text);
                b1 = double.parse(vectorb1.text);
                b2 = double.parse(vectorb2.text);
                dot = (a1 * b1) + (a2 * b2);
                magnitudeA = sqrt((a1 * a1) + (a2 * a2));
                magnitudeB = sqrt((b1 * b1) + (b2 * b2));
                angle =
                    (((acos((dot / (magnitudeA * magnitudeB)))) * 180) / pi);
                vectora1.clear();
                vectora2.clear();
                vectorb1.clear();
                vectorb2.clear();
                _AngleState();
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
            ansRow("Angle = $angle°"),
            const SizedBox(height: 20),
          ],
        );

      case 3:
        return Column(
          children: [
            const SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                "Select Dimension : ",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 5),
              whiteTextButton("1D", () {
                setState(() {
                  dimflag = 1;
                  angle = 0;
                  _AngleState();
                });
              }),
              const SizedBox(width: 10),
              whiteTextButton("2D", () {
                setState(() {
                  dimflag = 2;
                  angle = 0;
                  _AngleState();
                });
              }),
              const SizedBox(width: 10),
              redTextButton("3D", () {
                setState(() {
                  dimflag = 3;
                  angle = 0;
                  _AngleState();
                });
              })
            ]),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Vector A : ",
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(width: 15),
                SizedBox(
                  child: texInput(60, 15, vectora1, "a1"),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  child: texInput(60, 15, vectora2, "a2"),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  child: texInput(60, 15, vectora3, "a3"),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Vector B : ",
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(width: 15),
                SizedBox(
                  child: texInput(60, 15, vectorb1, "b1"),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  child: texInput(60, 15, vectorb2, "b2"),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  child: texInput(60, 15, vectorb3, "b2"),
                ),
              ],
            ),
            const SizedBox(height: 25),
            whiteTextButton('Calculate', () {
              setState(() {
                a1 = double.parse(vectora1.text);
                a2 = double.parse(vectora2.text);
                a3 = double.parse(vectora3.text);
                b1 = double.parse(vectorb1.text);
                b2 = double.parse(vectorb2.text);
                b3 = double.parse(vectorb3.text);
                dot = (a1 * b1) + (a2 * b2) + (a3 * b3);
                magnitudeA = sqrt((a1 * a1) + (a2 * a2) + (a3 * a3));
                magnitudeB = sqrt((b1 * b1) + (b2 * b2) + (b3 * b3));
                angle =
                    (((acos((dot / (magnitudeA * magnitudeB)))) * 180) / pi);
                vectora1.clear();
                vectora2.clear();
                vectora3.clear();
                vectorb1.clear();
                vectorb2.clear();
                vectorb3.clear();
                _AngleState();
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
            ansRow("Angle = $angle°"),
            const SizedBox(height: 20),
          ],
        );
    }
  }

  int dimflag = 1;
  double a1 = 0;
  double a2 = 0;
  double a3 = 0;
  double b1 = 0;
  double b2 = 0;
  double b3 = 0;
  double dot = 0;
  double magnitudeA = 0;
  double magnitudeB = 0;
  double angle = 0;
}
