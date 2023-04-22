import 'package:flutter/material.dart';

class Trapeziod extends StatefulWidget {
  const Trapeziod({super.key});

  @override
  State<Trapeziod> createState() => _TrapeziodState();
}

class _TrapeziodState extends State<Trapeziod> {
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
                "Trapeziod",
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
              child: Text("Trapeziod",
                  style: TextStyle(fontSize: 50, color: Colors.red))),
        ),
      ),
    );
  }
}