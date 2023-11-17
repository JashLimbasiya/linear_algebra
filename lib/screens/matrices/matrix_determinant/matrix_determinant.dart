import 'dart:math';

import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class MatrixDeterminant extends StatefulWidget {
  const MatrixDeterminant({super.key});

  @override
  State<MatrixDeterminant> createState() => _MatrixDeterminantState();
}

class _MatrixDeterminantState extends State<MatrixDeterminant> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Matrix Determinant"),
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
                                          matrixA[i][j] = int.parse(value);
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
                        determinant = determinantOfMatrix(matrixA, row);
                        _MatrixDeterminantState();
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
                    textRow("Determinant of Matrix : |$determinant|"),
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
  int determinant = 0;
  List<List<int>> matrixA = List.generate(2, (i) => List.generate(2, (j) => 0));

  static int determinantOfMatrix(List<List<int>> mat, int n) {
    int num1, num2, det = 1, index, total = 1;
    List<int> temp = List<int>.filled(n + 1, 0);
    for (int i = 0; i < n; i++) {
      index = i;
      while (mat[index][i] == 0 && index < n) {
        index++;
      }
      if (index == n) {
        continue;
      }
      if (index != i) {
        for (int j = 0; j < n; j++) {
          swap(mat, index, j, i, j);
        }
        det = (det * pow(-1, index - i)).toInt();
      }
      for (int j = 0; j < n; j++) {
        temp[j] = mat[i][j];
      }
      for (int j = i + 1; j < n; j++) {
        num1 = temp[i];
        num2 = mat[j][i];
        for (int k = 0; k < n; k++) {
          mat[j][k] = (num1 * mat[j][k]) - (num2 * temp[k]);
        }
        total = total * num1;
      }
    }
    for (int i = 0; i < n; i++) {
      det = det * mat[i][i];
    }
    return (det ~/ total);
  }

  static List<List<int>> swap(
      List<List<int>> arr, int i1, int j1, int i2, int j2) {
    int temp = arr[i1][j1];
    arr[i1][j1] = arr[i2][j2];
    arr[i2][j2] = temp;
    return arr;
  }
}
