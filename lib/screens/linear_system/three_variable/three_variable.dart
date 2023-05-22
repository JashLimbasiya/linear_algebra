import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class ThreeVariable extends StatefulWidget {
  const ThreeVariable({super.key});

  @override
  State<ThreeVariable> createState() => _ThreeVariableState();
}

TextEditingController consta1 = TextEditingController();
TextEditingController constb1 = TextEditingController();
TextEditingController constc1 = TextEditingController();
TextEditingController constd1 = TextEditingController();
TextEditingController consta2 = TextEditingController();
TextEditingController constb2 = TextEditingController();
TextEditingController constc2 = TextEditingController();
TextEditingController constd2 = TextEditingController();
TextEditingController consta3 = TextEditingController();
TextEditingController constb3 = TextEditingController();
TextEditingController constc3 = TextEditingController();
TextEditingController constd3 = TextEditingController();

class _ThreeVariableState extends State<ThreeVariable> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Three Variable"),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        texInput(50, 20, consta1, 'A1'),
                        const Text(
                          "X + ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        texInput(50, 20, constb1, 'B1'),
                        const Text(
                          "Y + ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        texInput(50, 20, constc1, 'C1'),
                        const Text(
                          "Z = ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        texInput(50, 20, constd1, 'D1'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        texInput(50, 20, consta2, 'A2'),
                        const Text(
                          "X + ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        texInput(50, 20, constb2, 'B2'),
                        const Text(
                          "Y + ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        texInput(50, 20, constc2, 'C2'),
                        const Text(
                          "Z = ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        texInput(50, 20, constd2, 'D2'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        texInput(50, 20, consta3, 'A3'),
                        const Text(
                          "X + ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        texInput(50, 20, constb3, 'B3'),
                        const Text(
                          "Y + ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        texInput(50, 20, constc3, 'C3'),
                        const Text(
                          "Z = ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        texInput(50, 20, constd3, 'D3'),
                      ],
                    ),
                    const SizedBox(height: 25),
                    whiteTextButton('Calculate', () {
                      setState(() {
                        a1 = double.parse(consta1.text);
                        b1 = double.parse(constb1.text);
                        c1 = double.parse(constc1.text);
                        d1 = double.parse(constd1.text);
                        a2 = double.parse(consta2.text);
                        b2 = double.parse(constb2.text);
                        c2 = double.parse(constc2.text);
                        d2 = double.parse(constd2.text);
                        a3 = double.parse(consta3.text);
                        b3 = double.parse(constb3.text);
                        c3 = double.parse(constc3.text);
                        d3 = double.parse(constd3.text);
                        if (a1 == b1 &&
                            b1 == c1 &&
                            c1 == d1 &&
                            a2 == b2 &&
                            b2 == c2 &&
                            c2 == d2 &&
                            a3 == b3 &&
                            b3 == c3 &&
                            c3 == d3) {
                          x = 0;
                          y = 0;
                          z = 0;
                        } else {
                          tempa1 = ((a2 * b1) - (b2 * a1));
                          tempb1 = ((a2 * c1) - (c2 * a1));
                          tempc1 = (((a2 * d1) - (d2 * a1)));
                          tempa2 = ((a3 * b2) - (b3 * a2));
                          tempb2 = ((a3 * c2) - (c3 * a2));
                          tempc2 = (((a3 * d2) - (d3 * a2)));
                          y = (-((tempb1 * tempc2) - (tempb2 * tempc1)) /
                              ((tempa1 * tempb2) - (tempa2 * tempb1)));
                          z = (-((tempc1 * tempa2) - (tempc2 * tempa1)) /
                              ((tempa1 * tempb2) - (tempa2 * tempb1)));
                          x = ((d1 - (c1 * z) - (b1 * y)) / a1);
                        }
                        consta1.clear();
                        constb1.clear();
                        constc1.clear();
                        constd1.clear();
                        consta2.clear();
                        constb2.clear();
                        constc2.clear();
                        constd2.clear();
                        consta3.clear();
                        constb3.clear();
                        constc3.clear();
                        constd3.clear();
                        _ThreeVariableState();
                      });
                    }),
                    const SizedBox(height: 25),
                    const Divider(
                      color: Color.fromARGB(50, 200, 0, 0),
                      thickness: 3,
                      indent: 5,
                      endIndent: 5,
                    ),
                    const SizedBox(height: 10),
                    ansRow("X = ", x),
                    ansRow("Y = ", y),
                    ansRow("Z = ", z),
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

  double a1 = 0;
  double b1 = 0;
  double c1 = 0;
  double d1 = 0;
  double a2 = 0;
  double b2 = 0;
  double c2 = 0;
  double d2 = 0;
  double a3 = 0;
  double b3 = 0;
  double c3 = 0;
  double d3 = 0;
  double x = 0;
  double y = 0;
  double z = 0;
  double tempa1 = 0;
  double tempb1 = 0;
  double tempc1 = 0;
  double tempa2 = 0;
  double tempb2 = 0;
  double tempc2 = 0;
}
