import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';

class MatrixAddition extends StatefulWidget {
  const MatrixAddition({super.key});

  @override
  State<MatrixAddition> createState() => _MatrixAdditionState();
}

class _MatrixAdditionState extends State<MatrixAddition> {
  var lists = [1, 2, 3, 4, 5];
  int row = 2;
  int column = 2;
  List<List<int>> matrixA = [];
  List<List<int>> matrixB = [];
  // // ignore: prefer_typing_uninitialized_variables
  // var twoDList1;
  // // ignore: prefer_typing_uninitialized_variables
  // var twoDList2;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Matrix Addition"),
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
                              // twoDList1 = List.generate(row, (i) => List.generate(column, (j) => i+j));
                              // twoDList2 = List<List>.generate(row, (i) => List<dynamic>.generate(column, (index) => null, growable: false), growable: false);
                              // twoDList1[1][1] = "Jash";
                            });
                          },
                        ),
                      ],
                    ),
                    for (int i = 0; i < row; i++)
                      Row(
                        children: [
                          for (int j = 0; j < column; j++)
                            Column(
                              children: [whiteTextButton("str", () {})],
                            )
                        ],
                      ),
                    const SizedBox(height: 10),
                    textRow("$row"),
                    textRow("$column"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
