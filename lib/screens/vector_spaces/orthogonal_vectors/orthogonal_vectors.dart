import 'package:flutter/material.dart';

class OrthogonalVectors extends StatefulWidget {
  const OrthogonalVectors({super.key});

  @override
  State<OrthogonalVectors> createState() => _OrthogonalVectorsState();
}

class _OrthogonalVectorsState extends State<OrthogonalVectors> {
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
                "Orthogonal Vectors",
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
              child: Text("Orthogonal Vectors",
                  style: TextStyle(fontSize: 50, color: Colors.red))),
        ),
      ),
    );
  }
}
