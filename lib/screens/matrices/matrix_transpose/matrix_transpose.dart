import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class MatrixTranspose extends StatefulWidget {
  const MatrixTranspose({super.key});

  @override
  State<MatrixTranspose> createState() => _MatrixTransposeState();
}

class _MatrixTransposeState extends State<MatrixTranspose> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Matrix Transpose"),
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
                                  row, (i) => List.generate(row, (j) => 0));
                              matrixB = List.generate(
                                  row, (i) => List.generate(row, (j) => 0));
                            });
                          },
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          "Column : ",
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
                                  row, (i) => List.generate(row, (j) => 0));
                              matrixB = List.generate(
                                  row, (i) => List.generate(row, (j) => 0));
                            });
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    textRow("Matrix :"),
                    for (int i = 0; i < row; i++)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int j = 0; j < row; j++)
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
                    whiteTextButton("Calculate", () {
                      setState(() {
                        for (int i = 0; i < row; i++) {
                          for (int j = 0; j < row; j++) {
                            matrixB[i][j] = matrixA[j][i];
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
                    textRow("Transpose of Matrix :"),
                    for (int x = 0; x < row; x++)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("|\t\t", style: TextStyle(fontSize: 20)),
                          for (int y = 0; y < row; y++)
                            Column(
                              children: [
                                Text("${matrixB[x][y]}\t\t",
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
  List<List<double>> matrixA =
      List.generate(2, (i) => List.generate(2, (j) => 0));
  List<List<double>> matrixB =
      List.generate(2, (i) => List.generate(2, (j) => 0));
}
