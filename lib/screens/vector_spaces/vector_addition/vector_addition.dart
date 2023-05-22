import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class VectorAddition extends StatefulWidget {
  const VectorAddition({super.key});

  @override
  State<VectorAddition> createState() => _VectorAdditionState();
}

int dimflag = 1;

class _VectorAdditionState extends State<VectorAddition> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Vector Addition"),
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
    while (true) {
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
                    _VectorAdditionState();
                  });
                }),
                const SizedBox(width: 10),
                whiteTextButton("2D", () {
                  setState(() {
                    dimflag = 2;
                    _VectorAdditionState();
                  });
                }),
                const SizedBox(width: 10),
                whiteTextButton("3D", () {
                  setState(() {
                    dimflag = 3;
                    _VectorAdditionState();
                  });
                })
              ]),
              const SizedBox(height: 10),
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
                    _VectorAdditionState();
                  });
                }),
                const SizedBox(width: 10),
                redTextButton("2D", () {
                  setState(() {
                    dimflag = 2;
                    _VectorAdditionState();
                  });
                }),
                const SizedBox(width: 10),
                whiteTextButton("3D", () {
                  setState(() {
                    dimflag = 3;
                    _VectorAdditionState();
                  });
                })
              ]),
              const SizedBox(height: 10),
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
                    _VectorAdditionState();
                  });
                }),
                const SizedBox(width: 10),
                whiteTextButton("2D", () {
                  setState(() {
                    dimflag = 2;
                    _VectorAdditionState();
                  });
                }),
                const SizedBox(width: 10),
                redTextButton("3D", () {
                  setState(() {
                    dimflag = 3;
                    _VectorAdditionState();
                  });
                })
              ]),
              const SizedBox(height: 10),
            ],
          );
      }
    }
  }
}
