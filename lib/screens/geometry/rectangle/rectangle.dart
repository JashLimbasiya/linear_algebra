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
                "Rectangle",
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
                    textbutton('Calculate', () {
                      setState(() {
                        length = double.parse(rectanglelength.text);
                        width = double.parse(rectanglewidth.text);
                        diagonal = sqrt((length * length) + (width * width));
                        perimeter = (2 * (length + width));
                        area = (length * width);
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
                    ansRow("Length (l) = ", length),
                    ansRow("Width (w) = ", width),
                    ansRow("Diagonal = ", diagonal),
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

  double length = 0;
  double width = 0;
  double diagonal = 0;
  double perimeter = 0;
  double area = 0;
}
