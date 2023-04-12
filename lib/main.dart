import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:linear_algebra/screens/feedback.dart';
import 'package:linear_algebra/screens/geometry/circle.dart';
import 'package:linear_algebra/screens/geometry/cone.dart';
import 'package:linear_algebra/screens/geometry/cube.dart';
import 'package:linear_algebra/screens/geometry/cylinder.dart';
import 'package:linear_algebra/screens/geometry/equilateral_triangle.dart';
import 'package:linear_algebra/screens/geometry/geometry_list.dart';
import 'package:linear_algebra/screens/geometry/isosceles_triangle.dart';
import 'package:linear_algebra/screens/geometry/parallelogram.dart';
import 'package:linear_algebra/screens/geometry/rectangle.dart';
import 'package:linear_algebra/screens/geometry/rhombus.dart';
import 'package:linear_algebra/screens/geometry/sphere.dart';
import 'package:linear_algebra/screens/geometry/square.dart';
import 'package:linear_algebra/screens/geometry/trapezoid.dart';
import 'package:linear_algebra/screens/linear_system/linear_system_list.dart';
import 'package:linear_algebra/screens/matrices/matrices_list.dart';
import 'package:linear_algebra/screens/splash_screen.dart';
import 'package:linear_algebra/screens/vector_spaces/vector_spaces_list.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Linear Algebra',
      theme: ThemeData(
        primarySwatch: Colors.red,

      ),
      routes: {
        '/splash_screen': (context) => const SplashScreen(),
        'g': (context) => const GeometryList(),
        'ls': (context) => const LinearSystemList(),
        'm': (context) => const MatricesList(),
        'vs': (context) => const VectorSpacesList(),
        'f': (context) => const FeedbackScreen(),
        'cone': (context) => const Cone(),
        'cylinder': (context) => const Cylinder(),
        'isosceles_triangle': (context) => const IsoscelesTriangle(),
        'equilateral_triangle': (context) => const EquilateralTriangle(),
        'circle': (context) => const Circle(),
        'sphere': (context) => const Sphere(),
        'square': (context) => const Square(),
        'cube': (context) => const Cube(),
        'rectangle': (context) => const Rectangle(),
        'rhombus': (context) => const Rhombus(),
        'parallelogram': (context) => const Parallelogram(),
        'trapezoid': (context) => const Trapeziod(),
      },
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}