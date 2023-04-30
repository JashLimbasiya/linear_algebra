import 'package:flutter/material.dart';

class GeometryList extends StatefulWidget{
  const GeometryList({super.key});

  @override
  State<GeometryList> createState() => _GeometryListState();
}

class _GeometryListState extends State<GeometryList> {
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
                "Geometry",
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
          child: GridView.count(
            padding: const EdgeInsets.only(
                left: 10, top: 20, right: 10, bottom: 10),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              CardView("Cone", 'lib/assets/images/geometry/cone.png','cone'),
              CardView(
                  "Cylinder", 'lib/assets/images/geometry/cylinder.png','cylinder'),
              CardView("Isosceles Triangle", 'lib/assets/images/geometry/isosceles_triangle.png','isosceles_triangle'),
              CardView(
                  "Equilateral Triangle", 'lib/assets/images/geometry/equilateral_triangle.png','equilateral_triangle'),
              CardView("Circle", 'lib/assets/images/geometry/circle.png','circle'),
              CardView("Sphere", 'lib/assets/images/geometry/sphere.png','sphere'),
              CardView("Square", 'lib/assets/images/geometry/square.png','square'),
              CardView("Cube", 'lib/assets/images/geometry/cube.png','cube'),
              CardView("Rectangle", 'lib/assets/images/geometry/rectangle.png','rectangle'),
              CardView("Cuboid", 'lib/assets/images/geometry/cuboid.png', 'cuboid'),
              CardView("Rhombus", 'lib/assets/images/geometry/rhombus.png','rhombus'),
              CardView("Parallelogram", 'lib/assets/images/geometry/parallelogram.png','parallelogram'),
              CardView("Trapezoid", 'lib/assets/images/geometry/trapezoid.png','trapezoid'),
            ],

          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Card CardView(String str, String ico, String page) {
    return Card(
      color: Colors.white,
      shadowColor: Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 20,
      margin: const EdgeInsets.all(10),
      child: ListTile(
        title: Center(
          child: Wrap(
            children: [
              Container(
                  alignment: Alignment.center,
                  child: SizedBox(
                      width: 100, height: 100, child: Image.asset(ico))),
              Container(
                //padding: EdgeInsets.only(left: 25, right: 25),
                alignment: Alignment.center,
                child: Text(str,
                    style: const TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 14)),
              ),
              //const SizedBox(height: 35),
            ],
          ),
        ),
        onTap: () {
          Navigator.pushNamed(context, page.toString());
        },
      ),
    );
  }
}