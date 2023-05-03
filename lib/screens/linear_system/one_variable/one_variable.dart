import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class OneVariable extends StatefulWidget {
  const OneVariable({super.key});

  @override
  State<OneVariable> createState() => _OneVariableState();
}

TextEditingController consta = TextEditingController();
TextEditingController constb = TextEditingController();

class _OneVariableState extends State<OneVariable> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("One Variable"),
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
                        texInput(100, 30, consta, 'A'),
                        const Text(
                          "X = ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        texInput(100, 30, constb, 'B'),
                      ],
                    ),
                    const SizedBox(height: 25),
                    textbutton('Calculate', () {
                      setState(() {
                        a = double.parse(consta.text);
                        b = double.parse(constb.text);
                        x = (b / a);
                        consta.clear();
                        constb.clear();
                        _OneVariableState();
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
                    ansRow("X = ", x),
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

  double a = 0;
  double b = 0;
  double x = 0;
}
