import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class MatricesList extends StatefulWidget {
  const MatricesList({super.key});

  @override
  State<MatricesList> createState() => _MatricesListState();
}

class _MatricesListState extends State<MatricesList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Matrices"),
        body: Container(
          decoration: background(),
          child: GridView.count(
            padding:
                const EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 10),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              cardView("Addition", 'lib/assets/images/matrices/addition.png',
                  () {
                Navigator.pushNamed(context, 'matrix_addition');
              }),
              cardView(
                  "Subtraction", 'lib/assets/images/matrices/subtraction.png',
                  () {
                Navigator.pushNamed(context, 'matrix_subtraction');
              }),
              cardView("Multiplication",
                  'lib/assets/images/matrices/multiplication.png', () {
                Navigator.pushNamed(context, 'matrix_multiplication');
              }),
              cardView("Transpose", 'lib/assets/images/matrices/transpose.png',
                  () {
                Navigator.pushNamed(context, 'matrix_transpose');
              }),
              cardView("Trace", 'lib/assets/images/matrices/trace.png', () {
                Navigator.pushNamed(context, 'matrix_trace');
              }),
              cardView(
                  "Determinant", 'lib/assets/images/matrices/determinant.png',
                  () {
                Navigator.pushNamed(context, 'matrix_determinant');
              }),
            ],
          ),
        ),
      ),
    );
  }
}
