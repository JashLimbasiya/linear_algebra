import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class MatrixSubtraction extends StatefulWidget {
  const MatrixSubtraction({super.key});

  @override
  State<MatrixSubtraction> createState() => _MatrixSubtractionState();
}

class _MatrixSubtractionState extends State<MatrixSubtraction> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Matrix Subtraction"),
        body: Container(
          decoration: background(),
          child: ListView(
            padding:
                const EdgeInsets.only(top: 25, right: 10, bottom: 10, left: 10),
            children: [
              Card(
                shadowColor: Colors.red,
                elevation: 10,
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Raw : ",
                          style: TextStyle(fontSize: 20),
                        ),
                        DropdownButton(
                          value: row,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: lists.map((int items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(
                                "$items",
                                style: const TextStyle(fontSize: 20),
                              ),
                            );
                          }).toList(),
                          onChanged: (int? newValue) {
                            setState(() {
                              row = newValue!;
                              matrixA = List.generate(
                                  row, (i) => List.generate(column, (j) => 0));
                              matrixB = List.generate(
                                  row, (i) => List.generate(column, (j) => 0));
                              matrixC = List.generate(
                                  row, (i) => List.generate(column, (j) => 0));
                            });
                          },
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          "Column : ",
                          style: TextStyle(fontSize: 20),
                        ),
                        DropdownButton(
                          value: column,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: lists.map((int items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(
                                "$items",
                                style: const TextStyle(fontSize: 20),
                              ),
                            );
                          }).toList(),
                          onChanged: (int? newValue) {
                            setState(() {
                              column = newValue!;
                              matrixA = List.generate(
                                  row, (i) => List.generate(column, (j) => 0));
                              matrixB = List.generate(
                                  row, (i) => List.generate(column, (j) => 0));
                              matrixC = List.generate(
                                  row, (i) => List.generate(column, (j) => 0));
                            });
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    textRow("Matrix A :"),
                    for (int i = 0; i < row; i++)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int j = 0; j < column; j++)
                            Column(
                              children: [
                                SizedBox(
                                  width: 75,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: TextFormField(
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                      keyboardType: TextInputType.number,
                                      onChanged: (value) {
                                        setState(() {
                                          matrixA[i][j] = double.parse(value);
                                        });
                                      },
                                      decoration: InputDecoration(
                                        hintText: "($i,$j)",
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                        ],
                      ),
                    const SizedBox(height: 25),
                    textRow("Matrix B :"),
                    for (int i = 0; i < row; i++)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int j = 0; j < column; j++)
                            Column(
                              children: [
                                SizedBox(
                                  width: 75,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: TextFormField(
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                      keyboardType: TextInputType.number,
                                      onChanged: (value) {
                                        setState(() {
                                          matrixB[i][j] = double.parse(value);
                                        });
                                      },
                                      decoration: InputDecoration(
                                        hintText: "($i,$j)",
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                        ],
                      ),
                    const SizedBox(height: 25),
                    whiteTextButton("Calculate", () {
                      setState(() {
                        for (int i = 0; i < row; i++) {
                          for (int j = 0; j < column; j++) {
                            matrixC[i][j] = matrixA[i][j] - matrixB[i][j];
                          }
                        }
                      });
                    }),
                    const SizedBox(height: 25),
                    const Divider(
                      color: Color.fromARGB(70, 200, 0, 0),
                      thickness: 3,
                      indent: 5,
                      endIndent: 5,
                    ),
                    const SizedBox(height: 10),
                    textRow("Matrix A-B :"),
                    for (int x = 0; x < row; x++)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("|\t\t", style: TextStyle(fontSize: 20)),
                          for (int y = 0; y < column; y++)
                            Column(
                              children: [
                                Text("${matrixC[x][y]}\t\t",
                                    style: const TextStyle(fontSize: 20)),
                              ],
                            ),
                          const Text("|", style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    const SizedBox(height: 20),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  var lists = [1, 2, 3, 4, 5];
  int row = 2;
  int column = 2;
  List<List<double>> matrixA =
      List.generate(2, (i) => List.generate(2, (j) => 0));
  List<List<double>> matrixB =
      List.generate(2, (i) => List.generate(2, (j) => 0));
  List<List<double>> matrixC =
      List.generate(2, (i) => List.generate(2, (j) => 0));
}
