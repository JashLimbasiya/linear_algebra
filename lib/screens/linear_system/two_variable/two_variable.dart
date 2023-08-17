import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class TwoVariable extends StatefulWidget {
  const TwoVariable({super.key});

  @override
  State<TwoVariable> createState() => _TwoVariableState();
}

TextEditingController consta1 = TextEditingController();
TextEditingController constb1 = TextEditingController();
TextEditingController constc1 = TextEditingController();
TextEditingController consta2 = TextEditingController();
TextEditingController constb2 = TextEditingController();
TextEditingController constc2 = TextEditingController();

class _TwoVariableState extends State<TwoVariable> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Two Variable"),
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
                        textInput(70, 25, consta1, 'A1'),
                        const Text(
                          "X + ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        textInput(70, 25, constb1, 'B1'),
                        const Text(
                          "Y + ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        textInput(70, 25, constc1, 'C1'),
                        const Text(
                          " = 0",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        textInput(70, 25, consta2, 'A2'),
                        const Text(
                          "X + ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        textInput(70, 25, constb2, 'B2'),
                        const Text(
                          "Y + ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        textInput(70, 25, constc2, 'C2'),
                        const Text(
                          " = 0",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    whiteTextButton('Calculate', () {
                      setState(() {
                        a1 = double.parse(consta1.text);
                        b1 = double.parse(constb1.text);
                        c1 = double.parse(constc1.text);
                        a2 = double.parse(consta2.text);
                        b2 = double.parse(constb2.text);
                        c2 = double.parse(constc2.text);
                        c1 = (-c1);
                        c2 = (-c2);
                        x = double.parse(
                            (((b1 * c2) - (b2 * c1)) / ((a1 * b2) - (a2 * b1)))
                                .toStringAsFixed(2));
                        y = double.parse(
                            (((c1 * a2) - (c2 * a1)) / ((a1 * b2) - (a2 * b1)))
                                .toStringAsFixed(2));
                        consta1.clear();
                        constb1.clear();
                        constc1.clear();
                        consta2.clear();
                        constb2.clear();
                        constc2.clear();
                        _TwoVariableState();
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
                    textRow("X = $x"),
                    textRow("Y = $y"),
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
  double a2 = 0;
  double b2 = 0;
  double c2 = 0;
  double x = 0;
  double y = 0;
}
