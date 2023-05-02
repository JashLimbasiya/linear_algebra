import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class VectorSpacesList extends StatefulWidget {
  const VectorSpacesList({super.key});

  @override
  State<VectorSpacesList> createState() => _VectorSpacesListState();
}

class _VectorSpacesListState extends State<VectorSpacesList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Vector Spaces"),
        body: Container(
          decoration: background(),
          child: GridView.count(
            padding:
                const EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 10),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              cardView(
                  "Addition", 'lib/assets/images/vector_spaces/addition.png',
                  () {
                Navigator.pushNamed(context, 'vector_addition');
              }),
              cardView("Subtraction",
                  'lib/assets/images/vector_spaces/subtraction.png', () {
                Navigator.pushNamed(context, 'vector_subtraction');
              }),
              cardView("Scalar Product",
                  'lib/assets/images/vector_spaces/scalar_product.png', () {
                Navigator.pushNamed(context, 'vector_scalar_product');
              }),
              cardView("Cross Product",
                  'lib/assets/images/vector_spaces/cross_product.png', () {
                Navigator.pushNamed(context, 'vector_cross_product');
              }),
              cardView("Angle", 'lib/assets/images/vector_spaces/angle.png',
                  () {
                Navigator.pushNamed(context, 'angle');
              }),
              cardView("Projection",
                  'lib/assets/images/vector_spaces/projection.png', () {
                Navigator.pushNamed(context, 'projection');
              }),
              cardView("Orthogonal Vectors",
                  'lib/assets/images/vector_spaces/orthogonal_vectors.png', () {
                Navigator.pushNamed(context, 'orthogonal_vectors');
              }),
            ],
          ),
        ),
      ),
    );
  }
}
