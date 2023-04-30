import 'dart:math';

import 'package:flutter/material.dart';

class Circle extends StatefulWidget {
  const Circle({super.key});

  @override
  State<Circle> createState() => _CircleState();
}

TextEditingController circleradius = TextEditingController();

class _CircleState extends State<Circle> {
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
                "Circle",
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
                      controller: circleradius,
                      decoration: const InputDecoration(
                        hintText: 'Enter Radius ',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 25),
                    TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => Colors.white),
                          padding: const MaterialStatePropertyAll(
                              EdgeInsets.all(10)),
                          shadowColor: MaterialStateColor.resolveWith(
                              (states) => Colors.red),
                          elevation: const MaterialStatePropertyAll(5),
                          shape: const MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                                side: BorderSide(color: Colors.red, width: 2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                          ),
                        ),
                        child: const Text(
                          'Calculate',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                          setState(() {
                            radius = double.parse(circleradius.text);
                            perimeter = (2 * pi * radius);
                            area = (pi * radius * radius);
                            circleradius.clear();
                            _CircleState();
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

  ansRow(String str, double ans) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(width: 15, height: 28),
        Text(
          str,
          style: const TextStyle(fontSize: 20),
        ),
        Text(
          ans.toStringAsFixed(2),
          style: const TextStyle(fontSize: 20),
        )
      ],
    );
  }

  double radius = 0;
  double perimeter = 0;
  double area = 0;
}
