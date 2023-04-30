import 'dart:math';

import 'package:flutter/material.dart';

class Cuboid extends StatefulWidget {
  const Cuboid({super.key});

  @override
  State<Cuboid> createState() => _CuboidState();
}

TextEditingController cuboidlength = TextEditingController();
TextEditingController cuboidwidth = TextEditingController();
TextEditingController cuboidheight = TextEditingController();

class _CuboidState extends State<Cuboid> {
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
                "Cuboid",
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
                      controller: cuboidlength,
                      decoration: const InputDecoration(
                        hintText: 'Enter Length ',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: cuboidwidth,
                      decoration: const InputDecoration(
                        hintText: 'Enter Width ',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: cuboidheight,
                      decoration: const InputDecoration(
                        hintText: 'Enter Height ',
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
                            length = double.parse(cuboidlength.text);
                            width = double.parse(cuboidwidth.text);
                            height = double.parse(cuboidheight.text);
                            volume = (length * width * height);
                            lateralsurfacearea =
                                (2 * height * (length + width));
                            totalsurfacearea = (2 *
                                ((length * width) +
                                    (width * height) +
                                    (height * length)));
                            perimeter = (4 * (length + width + height));
                            diagonal = sqrt((length * length) +
                                (width * width) +
                                (height * height));
                            cuboidlength.clear();
                            cuboidwidth.clear();
                            cuboidheight.clear();
                            _CuboidState();
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
                    ansRow("Width (b) = ", width),
                    ansRow("Height (h) = ", height),
                    ansRow("Volume = ", volume),
                    ansRow("Lateral Surface Area = ", lateralsurfacearea),
                    ansRow("Total Surface Area = ", totalsurfacearea),
                    ansRow("Perimeter = ", perimeter),
                    ansRow("Diagonal = ", diagonal),
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

  double length = 0;
  double width = 0;
  double height = 0;
  double lateralsurfacearea = 0;
  double totalsurfacearea = 0;
  double perimeter = 0;
  double diagonal = 0;
  double volume = 0;
}
