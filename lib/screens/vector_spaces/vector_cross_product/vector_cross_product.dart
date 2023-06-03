import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class VectorCrossProduct extends StatefulWidget {
  const VectorCrossProduct({super.key});

  @override
  State<VectorCrossProduct> createState() => _VectorCrossProductState();
}

TextEditingController vectora1 = TextEditingController();
TextEditingController vectora2 = TextEditingController();
TextEditingController vectora3 = TextEditingController();
TextEditingController vectorb1 = TextEditingController();
TextEditingController vectorb2 = TextEditingController();
TextEditingController vectorb3 = TextEditingController();

class _VectorCrossProductState extends State<VectorCrossProduct> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Cross Product"),
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
                  c1 = 0;
                  c2 = 0;
                  c3 = 0;
                  _VectorCrossProductState();
                });
              }),
              const SizedBox(width: 10),
              whiteTextButton("2D", () {
                setState(() {
                  dimflag = 2;
                  c1 = 0;
                  c2 = 0;
                  c3 = 0;
                  _VectorCrossProductState();
                });
              }),
              const SizedBox(width: 10),
              whiteTextButton("3D", () {
                setState(() {
                  dimflag = 3;
                  c1 = 0;
                  c2 = 0;
                  c3 = 0;
                  _VectorCrossProductState();
                });
              })
            ]),
            const SizedBox(height: 25),
            const Divider(
              color: Color.fromARGB(70, 200, 0, 0),
              thickness: 3,
              indent: 5,
              endIndent: 5,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(width: 15),
                Expanded(
                  child: Text(
                    'Cross Product is only possible for vectors of 3 dimensions',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.red),
                    softWrap: false,
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(width: 15),
              ],
            ),
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
                  c1 = 0;
                  c2 = 0;
                  c3 = 0;
                  _VectorCrossProductState();
                });
              }),
              const SizedBox(width: 10),
              redTextButton("2D", () {
                setState(() {
                  dimflag = 2;
                  c1 = 0;
                  c2 = 0;
                  c3 = 0;
                  _VectorCrossProductState();
                });
              }),
              const SizedBox(width: 10),
              whiteTextButton("3D", () {
                setState(() {
                  dimflag = 3;
                  c1 = 0;
                  c2 = 0;
                  c3 = 0;
                  _VectorCrossProductState();
                });
              })
            ]),
            const SizedBox(height: 25),
            const Divider(
              color: Color.fromARGB(70, 200, 0, 0),
              thickness: 3,
              indent: 5,
              endIndent: 5,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(width: 15),
                Expanded(
                  child: Text(
                    'Cross Product is only possible for vectors of 3 dimensions',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.red),
                    softWrap: false,
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(width: 15),
              ],
            ),
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
                  c1 = 0;
                  c2 = 0;
                  c3 = 0;
                  _VectorCrossProductState();
                });
              }),
              const SizedBox(width: 10),
              whiteTextButton("2D", () {
                setState(() {
                  dimflag = 2;
                  c1 = 0;
                  c2 = 0;
                  c3 = 0;
                  _VectorCrossProductState();
                });
              }),
              const SizedBox(width: 10),
              redTextButton("3D", () {
                setState(() {
                  dimflag = 3;
                  c1 = 0;
                  c2 = 0;
                  c3 = 0;
                  _VectorCrossProductState();
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
                c1 = double.parse(((a2 * b3) - (a3 * b2)).toStringAsFixed(2));
                c2 = double.parse(((a3 * b1) - (a1 * b3)).toStringAsFixed(2));
                c3 = double.parse(((a1 * b2) - (a2 * b1)).toStringAsFixed(2));
                vectora1.clear();
                vectora2.clear();
                vectora3.clear();
                vectorb1.clear();
                vectorb2.clear();
                vectorb3.clear();
                _VectorCrossProductState();
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
            ansRow("A X B : ( $c1 , $c2 , $c3 )"),
            const SizedBox(height: 20),
          ],
        );
    }
  }

  int dimflag = 3;
  double a1 = 0;
  double a2 = 0;
  double a3 = 0;
  double b1 = 0;
  double b2 = 0;
  double b3 = 0;
  double c1 = 0;
  double c2 = 0;
  double c3 = 0;
}
