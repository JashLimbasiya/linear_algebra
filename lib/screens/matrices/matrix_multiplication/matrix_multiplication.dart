import 'package:flutter/material.dart';

class MatrixMultiplication extends StatefulWidget {
  const MatrixMultiplication({super.key});

  @override
  State<MatrixMultiplication> createState() => _MatrixMultiplicationState();
}

class _MatrixMultiplicationState extends State<MatrixMultiplication> {
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
                "Matrix Multiplication",
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
          child: const Center(
              child: Text("Matrix Multiplication",
                  style: TextStyle(fontSize: 50, color: Colors.red))),
        ),
      ),
    );
  }
}
