import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class GeometryList extends StatefulWidget {
  const GeometryList({super.key});

  @override
  State<GeometryList> createState() => _GeometryListState();
}

class _GeometryListState extends State<GeometryList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Geometry"),
        body: Container(
          decoration: background(),
          child: GridView.count(
            padding:
                const EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 10),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              cardView("Cone", 'lib/assets/images/geometry/cone.png', () {
                Navigator.pushNamed(context, 'cone');
              }),
              cardView("Cylinder", 'lib/assets/images/geometry/cylinder.png',
                  () {
                Navigator.pushNamed(context, 'cylinder');
              }),
              cardView("Isosceles Triangle",
                  'lib/assets/images/geometry/isosceles_triangle.png', () {
                Navigator.pushNamed(context, 'isosceles_triangle');
              }),
              cardView("Equilateral Triangle",
                  'lib/assets/images/geometry/equilateral_triangle.png', () {
                Navigator.pushNamed(context, 'equilateral_triangle');
              }),
              cardView("Circle", 'lib/assets/images/geometry/circle.png', () {
                Navigator.pushNamed(context, 'circle');
              }),
              cardView("Sphere", 'lib/assets/images/geometry/sphere.png', () {
                Navigator.pushNamed(context, 'sphere');
              }),
              cardView("Square", 'lib/assets/images/geometry/square.png', () {
                Navigator.pushNamed(context, 'square');
              }),
              cardView("Cube", 'lib/assets/images/geometry/cube.png', () {
                Navigator.pushNamed(context, 'cube');
              }),
              cardView("Rectangle", 'lib/assets/images/geometry/rectangle.png',
                  () {
                Navigator.pushNamed(context, 'rectangle');
              }),
              cardView("Cuboid", 'lib/assets/images/geometry/cuboid.png', () {
                Navigator.pushNamed(context, 'cuboid');
              }),
              cardView("Rhombus", 'lib/assets/images/geometry/rhombus.png', () {
                Navigator.pushNamed(context, 'rhombus');
              }),
              cardView("Parallelogram",
                  'lib/assets/images/geometry/parallelogram.png', () {
                Navigator.pushNamed(context, 'parallelogram');
              }),
            ],
          ),
        ),
      ),
    );
  }
}
