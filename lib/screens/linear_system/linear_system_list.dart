import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class LinearSystemList extends StatefulWidget {
  const LinearSystemList({super.key});

  @override
  State<LinearSystemList> createState() => _LinearSystemListState();
}

class _LinearSystemListState extends State<LinearSystemList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Linear System"),
        body: Container(
          decoration: background(),
          child: GridView.count(
            padding:
                const EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 10),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              cardView("One Variable", 'lib/assets/images/linear_system/x.png',
                  () {
                Navigator.pushNamed(context, 'one_variable');
              }),
              cardView("Two Variable", 'lib/assets/images/linear_system/xy.png',
                  () {
                Navigator.pushNamed(context, 'two_variable');
              }),
              // cardView(
              //     "Three Variable", 'lib/assets/images/linear_system/xyz.png',
              //     () {
              //   Navigator.pushNamed(context, 'three_variable');
              // }),
            ],
          ),
        ),
      ),
    );
  }
}
