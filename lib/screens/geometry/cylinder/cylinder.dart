import 'dart:math';

import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class Cylinder extends StatefulWidget {
  const Cylinder({super.key});

  @override
  State<Cylinder> createState() => _CylinderState();
}

TextEditingController cylinderradius = TextEditingController();
TextEditingController cylinderheight = TextEditingController();

class _CylinderState extends State<Cylinder> {
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
                "Cylinder",
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
                      controller: cylinderradius,
                      decoration: const InputDecoration(
                        hintText: 'Enter Radius ',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: cylinderheight,
                      decoration: const InputDecoration(
                        hintText: 'Enter Height ',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 25),
                    textbutton('Calculate', () {
                      setState(() {
                        radius = double.parse(cylinderradius.text);
                        height = double.parse(cylinderheight.text);
                        curvedsurfacearea = (2 * pi * radius * height);
                        totalsurfacearea =
                            (2 * pi * radius * (radius + height));
                        volume = (pi * radius * radius * height);
                        cylinderradius.clear();
                        cylinderheight.clear();
                        _CylinderState();
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
                    ansRow("Height (h) = ", height),
                    ansRow("Curved Surface Area = ", curvedsurfacearea),
                    ansRow("Total Surface Area (A) = ", totalsurfacearea),
                    ansRow("Volume (V) = ", volume),
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

  double radius = 0;
  double height = 0;
  double curvedsurfacearea = 0;
  double totalsurfacearea = 0;
  double volume = 0;
}
