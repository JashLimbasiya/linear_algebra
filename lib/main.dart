import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:linear_algebra/screens/feedback.dart';
import 'package:linear_algebra/screens/geometry/circle/circle.dart';
import 'package:linear_algebra/screens/geometry/cone/cone.dart';
import 'package:linear_algebra/screens/geometry/cube/cube.dart';
import 'package:linear_algebra/screens/geometry/cylinder/cylinder.dart';
import 'package:linear_algebra/screens/geometry/equilateral_triangle/equilateral_triangle.dart';
import 'package:linear_algebra/screens/geometry/geometry_list.dart';
import 'package:linear_algebra/screens/geometry/isosceles_triangle/isosceles_triangle.dart';
import 'package:linear_algebra/screens/geometry/parallelogram/parallelogram.dart';
import 'package:linear_algebra/screens/geometry/rectangle/rectangle.dart';
import 'package:linear_algebra/screens/geometry/rhombus/rhombus.dart';
import 'package:linear_algebra/screens/geometry/sphere/sphere.dart';
import 'package:linear_algebra/screens/geometry/square/square.dart';
import 'package:linear_algebra/screens/geometry/trapezoid/trapezoid.dart';
import 'package:linear_algebra/screens/linear_system/gaussian_elimination/gaussian_elimination.dart';
import 'package:linear_algebra/screens/linear_system/gaussian_jorden/gaussian_jorden.dart';
import 'package:linear_algebra/screens/linear_system/linear_system_list.dart';
import 'package:linear_algebra/screens/matrices/matrices_list.dart';
import 'package:linear_algebra/screens/matrices/matrix_addition/matrix_addition.dart';
import 'package:linear_algebra/screens/matrices/matrix_determinant/matrix_determinant.dart';
import 'package:linear_algebra/screens/matrices/matrix_multiplication/matrix_multiplication.dart';
import 'package:linear_algebra/screens/matrices/matrix_subtraction/matrix_subtraction.dart';
import 'package:linear_algebra/screens/matrices/matrix_trace/matrix_trace.dart';
import 'package:linear_algebra/screens/matrices/matrix_transpose/matrix_transpose.dart';
import 'package:linear_algebra/screens/splash_screen.dart';
import 'package:linear_algebra/screens/vector_spaces/angle/angle.dart';
import 'package:linear_algebra/screens/vector_spaces/orthogonal_vectors/orthogonal_vectors.dart';
import 'package:linear_algebra/screens/vector_spaces/projection/projection.dart';
import 'package:linear_algebra/screens/vector_spaces/vector_addition/vector_addition.dart';
import 'package:linear_algebra/screens/vector_spaces/vector_cross_product/vector_cross_product.dart';
import 'package:linear_algebra/screens/vector_spaces/vector_scalar_product/vector_scalar_product.dart';
import 'package:linear_algebra/screens/vector_spaces/vector_spaces_list.dart';
import 'package:linear_algebra/screens/vector_spaces/vector_subtraction/vector_subtraction.dart';

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
        'gaussian_jorden': (context) => const GaussianJorden(),
        'gaussian_elimination': (context) => const GaussianElimination(),
        'matrix_determinant': (context) => const MatrixDeterminant(),
        'matrix_trace': (context) => const MatrixTrace(),
        'matrix_transpose': (context) => const MatrixTranspose(),
        'matrix_multiplication': (context) => const MatrixMultiplication(),
        'matrix_subtraction': (context) => const MatrixSubtraction(),
        'matrix_addition': (context) => const MatrixAddition(),
        'vector_addition': (context) => const VectorAddition(),
        'vector_subtraction': (context) => const VectorSubtraction(),
        'vector_scalar_product': (context) => const VectorScalarProduct(),
        'vector_cross_product': (context) => const VectorCrossProduct(),
        'angle': (context) => const Angle(),
        'projection': (context) => const Projection(),
        'orthogonal_vectors': (context) => const OrthogonalVectors(),
      },
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
