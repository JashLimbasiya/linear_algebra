import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:linear_algebra/screens/feedback.dart';
import 'package:linear_algebra/screens/geometry/circle/circle.dart';
import 'package:linear_algebra/screens/geometry/cone/cone.dart';
import 'package:linear_algebra/screens/geometry/cube/cube.dart';
import 'package:linear_algebra/screens/geometry/cuboid/cuboid.dart';
import 'package:linear_algebra/screens/geometry/cylinder/cylinder.dart';
import 'package:linear_algebra/screens/geometry/equilateral_triangle/equilateral_triangle.dart';
import 'package:linear_algebra/screens/geometry/geometry_list.dart';
import 'package:linear_algebra/screens/geometry/isosceles_triangle/isosceles_triangle.dart';
import 'package:linear_algebra/screens/geometry/parallelogram/parallelogram.dart';
import 'package:linear_algebra/screens/geometry/rectangle/rectangle.dart';
import 'package:linear_algebra/screens/geometry/rhombus/rhombus.dart';
import 'package:linear_algebra/screens/geometry/sphere/sphere.dart';
import 'package:linear_algebra/screens/geometry/square/square.dart';
import 'package:linear_algebra/screens/linear_system/linear_system_list.dart';
import 'package:linear_algebra/screens/linear_system/one_variable/one_variable.dart';
import 'package:linear_algebra/screens/linear_system/three_variable/three_variable.dart';
import 'package:linear_algebra/screens/linear_system/two_variable/two_variable.dart';
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
        'cuboid': (context) => const Cuboid(),
        'rhombus': (context) => const Rhombus(),
        'parallelogram': (context) => const Parallelogram(),
        'one_variable': (context) => const OneVariable(),
        'two_variable': (context) => const TwoVariable(),
        'three_variable': (context) => const ThreeVariable(),
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

appbar(String str) {
  return AppBar(
    toolbarHeight: 75,
    shadowColor: Colors.red,
    backgroundColor: Colors.red,
    elevation: 10,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
    ),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          str,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    ),
  );
}

background() {
  return const BoxDecoration(
    image: DecorationImage(
      image: AssetImage('lib/assets/images/background.png'),
      fit: BoxFit.cover,
    ),
  );
}

ansRow(String str) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const SizedBox(width: 15, height: 30),
      Expanded(
        child: Text(
          str,
          style: const TextStyle(fontSize: 20),
          softWrap: false,
          maxLines: 5,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      const SizedBox(width: 15),
    ],
  );
}

whiteTextButton(String str, Function onpressed) {
  return TextButton(
    style: ButtonStyle(
      backgroundColor: MaterialStateColor.resolveWith((states) => Colors.white),
      padding: const MaterialStatePropertyAll(EdgeInsets.all(10)),
      shadowColor: MaterialStateColor.resolveWith((states) => Colors.red),
      elevation: const MaterialStatePropertyAll(5),
      shape: const MaterialStatePropertyAll(
        RoundedRectangleBorder(
            side: BorderSide(color: Colors.red, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(8))),
      ),
    ),
    onPressed: () {
      FocusManager.instance.primaryFocus?.unfocus();
      onpressed();
    },
    child: Text(
      str,
      style: const TextStyle(
        fontSize: 18,
        color: Colors.red,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

redTextButton(String str, Function onpressed) {
  return TextButton(
    style: ButtonStyle(
      backgroundColor: MaterialStateColor.resolveWith((states) => Colors.red),
      padding: const MaterialStatePropertyAll(EdgeInsets.all(10)),
      shadowColor: MaterialStateColor.resolveWith((states) => Colors.red),
      elevation: const MaterialStatePropertyAll(5),
      shape: const MaterialStatePropertyAll(
        RoundedRectangleBorder(
            side: BorderSide(color: Colors.red, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(8))),
      ),
    ),
    onPressed: () {
      FocusManager.instance.primaryFocus?.unfocus();
      onpressed;
    },
    child: Text(
      str,
      style: const TextStyle(
        fontSize: 18,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Card cardView(String str, String ico, Function ontap) {
  return Card(
    color: Colors.white,
    shadowColor: Colors.red,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    elevation: 20,
    margin: const EdgeInsets.all(10),
    child: ListTile(
      title: Column(
        children: [
          const SizedBox(height: 20),
          SizedBox(width: 100, height: 100, child: Image.asset(ico)),
          const SizedBox(height: 10),
          Text(str,
              style: const TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 15)),
        ],
      ),
      onTap: () {
        ontap();
      },
    ),
  );
}

textInput(
    double boxwidth, double textsize, TextEditingController input, String str) {
  return SizedBox(
    width: boxwidth,
    child: TextFormField(
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: textsize,
      ),
      keyboardType: TextInputType.number,
      controller: input,
      decoration: InputDecoration(
        hintText: str,
        filled: true,
        fillColor: Colors.white,
      ),
    ),
  );
}
